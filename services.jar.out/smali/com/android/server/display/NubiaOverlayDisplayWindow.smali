.class final Lcom/android/server/display/NubiaOverlayDisplayWindow;
.super Ljava/lang/Object;
.source "NubiaOverlayDisplayWindow.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;,
        Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;,
        Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FIELD_MULTI_WINDOW:Ljava/lang/String; = "ss_multi_window_enabled"

.field static final FIELD_SINGLE_UI_MODE:Ljava/lang/String; = "single_ui_mode"

.field private static final FIELD_SINGLE_UI_MODE_SENSOR_SWITCH:Ljava/lang/String; = "single_ui_mode_sensor_switch"

.field private static KEY_MENU_AND_HOME_POS:Ljava/lang/String; = null

.field private static final NUBIA_OVERLAY_DISPLAY_CLOSE_MODE:Ljava/lang/String; = "single_ui_close_mode"

.field private static final NUBIA_OVERLAY_DISPLAY_DEVICES:Ljava/lang/String; = "nubia_overlay_display_devices"

.field private static final NUBIA_OVERLAY_DISPLAY_DEVICES_MERMORY:Ljava/lang/String; = "nubia_overlay_display_devices_mermory"

.field private static final NUBIA_OVERLAY_DISPLAY_MODE:Ljava/lang/String; = "single_ui_mode"

.field private static final NUBIA_OVERLAY_DISPLAY_STATUS:Ljava/lang/String; = "single_ui_status"

.field private static final TAG:Ljava/lang/String; = "NubiaOverlayDisplayWindow"

.field private static mWindowVisible:Z


# instance fields
.field private final BW:I

.field private final DISABLE_MOVE_AND_RESIZE:Z

.field private final RESET_DELAY:J

.field private final STOP_REFRESH_DELAY:J

.field private final TW:I

.field private final WINDOW_ALPHA:F

.field private downTime:J

.field isLongClick:Z

.field private mChangeSideContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;

.field private mClickRunnable:Ljava/lang/Runnable;

.field private mCloseButton:Landroid/widget/ImageView;

.field private mCloseSFRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultDisplay:Landroid/view/Display;

.field private final mDefaultDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mGravity:I

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mHigherBarBackground:Landroid/view/ViewGroup;

.field private mHigherBarCenter:Landroid/view/ViewGroup;

.field private mHigherBarHeight:I

.field private mHigherBarLeft:Landroid/view/ViewGroup;

.field private mHigherBarRight:Landroid/view/ViewGroup;

.field mHigherBarVisible:Z

.field private mHigherCenterButton:Landroid/widget/ImageView;

.field private mHigherCenterHalo:Landroid/widget/ImageView;

.field private mHigherCenterRound:Landroid/widget/ImageView;

.field private mHigherLeftButton:Landroid/widget/ImageView;

.field private mHigherRightButton:Landroid/widget/ImageView;

.field private mIsRightHand:Z

.field private mIsSFRefreshing:Z

.field private final mListener:Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;

.field private mLogicalHeight:I

.field private mLogicalWidth:I

.field private mLowerBarHeight:I

.field private mLowerCenterButton:Landroid/widget/ImageView;

.field private mLowerLeftButton:Landroid/widget/ImageView;

.field private mLowerRightButton:Landroid/widget/ImageView;

.field private mMaxWidthVitrualScreen:I

.field private mMinWidthVitrualScreen:I

.field private mMovingHintHeight:I

.field private mMovingHintLower:Landroid/view/View;

.field private mMovingHintPosOffset:I

.field private mMovingHintUpper:Landroid/view/View;

.field private mMovingMask:Landroid/view/ViewGroup;

.field private mMutiWindowContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;

.field private mOnSystemHomeKeyTouched:Landroid/view/View$OnTouchListener;

.field private mOnSystemKeyLongClicked:Landroid/view/View$OnLongClickListener;

.field private mOnSystemLeftKeyTouched:Landroid/view/View$OnTouchListener;

.field private mOnSystemRightKeyTouched:Landroid/view/View$OnTouchListener;

.field private mRotated:I

.field private mSFHandler:Landroid/os/Handler;

.field private mScaleX:F

.field private mScaleY:F

.field private mScreenBackGround:Landroid/view/View;

.field private mScreenWithBar:Landroid/view/ViewGroup;

.field private mSizeBar:Landroid/view/ViewGroup;

.field private mSizeSlideBar:Landroid/view/ViewGroup;

.field private mSizeSlideBarRail:Landroid/view/View;

.field private mSizeSlideBarThumb:Landroid/view/View;

.field private mSizeSlideBarThumbHalo:Landroid/view/View;

.field private mSizerButton:Landroid/widget/ImageView;

.field private mSizerMask:Landroid/view/ViewGroup;

.field private mSlideBarThumbHeight:I

.field private mSlideBarWidth:I

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTextureView:Landroid/view/TextureView;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVitrualScreen:Landroid/view/ViewGroup;

.field private mWidth:I

.field private mWindowContentBg:Landroid/view/View;

.field private mWindowContentNew:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowParams2:Landroid/view/WindowManager$LayoutParams;

.field private mX:I

.field private mY:I

.field private onBarClickListener:Landroid/view/View$OnClickListener;

.field private onBarLongClickListener:Landroid/view/View$OnLongClickListener;

.field private onBarTouchListener:Landroid/view/View$OnTouchListener;

.field private onMoveButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private onSlideBarTouch:Landroid/view/View$OnTouchListener;

.field private onSlideButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private final rate:F

.field private upTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "persist.sys.key.menu2back"

    sput-object v0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->KEY_MENU_AND_HOME_POS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIIIIILjava/lang/String;DLcom/android/server/display/NubiaOverlayDisplayWindow$Listener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "densityDpi"    # I
    .param p8, "gravity"    # I
    .param p9, "leftOrRight"    # Ljava/lang/String;
    .param p10, "rate"    # D
    .param p12, "listener"    # Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f7d70a4    # 0.99f

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->WINDOW_ALPHA:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->DISABLE_MOVE_AND_RESIZE:Z

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRotated:I

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->RESET_DELAY:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->downTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->upTime:J

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->BW:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->TW:I

    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$1;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$2;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mIsRightHand:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$3;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mClickRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->STOP_REFRESH_DELAY:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mIsSFRefreshing:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSFHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$4;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$4;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCloseSFRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarVisible:Z

    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$5;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$5;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onBarClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isLongClick:Z

    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$6;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onBarLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$7;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onBarTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$8;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onMoveButtonTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$9;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onSlideButtonTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$10;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onSlideBarTouch:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$14;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$14;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOnSystemLeftKeyTouched:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$15;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$15;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOnSystemRightKeyTouched:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$16;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$16;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOnSystemHomeKeyTouched:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/server/display/NubiaOverlayDisplayWindow$17;

    invoke-direct {v0, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$17;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOnSystemKeyLongClicked:Landroid/view/View$OnLongClickListener;

    iput-object p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mX:I

    iput p4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mY:I

    double-to-float v0, p10

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->rate:F

    iput p6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    iput p5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    iput p8, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mGravity:I

    iput-object p12, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mListener:Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    const-string v0, "right"

    invoke-virtual {p9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mIsRightHand:Z

    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->createWindow()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mIsRightHand:Z

    goto :goto_0
.end method

.method private ResetMovingHintAccordingToScreen()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v0, v2, v3

    .local v0, "x":F
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    .local v1, "y":F
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setX(F)V

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintPosOffset:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setX(F)V

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintPosOffset:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method private ResetSlideBarAccordingToScreen()V
    .locals 7

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    sub-float v2, v4, v5

    .local v2, "x":F
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .local v0, "currentHeight":I
    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    mul-int/lit8 v4, v4, 0x10

    div-int/lit8 v4, v4, 0x9

    sub-int/2addr v4, v0

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v0

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    mul-int/lit8 v6, v6, 0x10

    div-int/lit8 v6, v6, 0x9

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSlideBarThumbHeight:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarRail:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSlideBarThumbHeight:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    mul-int/lit8 v4, v4, 0x10

    div-int/lit8 v4, v4, 0x9

    sub-int v4, v0, v4

    int-to-float v1, v4

    .local v1, "thumbPosVerse":F
    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSlideBarThumbHeight:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    sub-float v3, v4, v5

    .local v3, "y":F
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setY(F)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    .end local v0    # "currentHeight":I
    .end local v1    # "thumbPosVerse":F
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    .restart local v2    # "x":F
    goto/16 :goto_0

    .restart local v0    # "currentHeight":I
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    sub-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x10

    div-int/lit8 v5, v5, 0x9

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSlideBarThumbHeight:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/Display;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->hideScreenHigherBarAnimation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherCenterButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/NubiaOverlayDisplayWindow;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->changeSurfaceFlingerRefreshOptions(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mClickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->showScreenHigherBarAnimation()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->relayout()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->ResetMovingHintAccordingToScreen()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetMovingMask()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->showMovingHint()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherCenterRound:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherCenterHalo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->showHaloAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->showMovingStartAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetSizerMask()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->ResetSlideBarAccordingToScreen()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarThumbHalo:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/display/NubiaOverlayDisplayWindow;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;
    .param p1, "x1"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->adjustSlideBarBlockPosition(F)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->rate:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->hideHaloAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentBg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowVisible:Z

    return p0
.end method

.method static synthetic access$4700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCloseSFRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mListener:Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSFHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5100()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->KEY_MENU_AND_HOME_POS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerLeftButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerRightButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerCenterButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/display/NubiaOverlayDisplayWindow;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-wide v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->downTime:J

    return-wide v0
.end method

.method static synthetic access$5502(Lcom/android/server/display/NubiaOverlayDisplayWindow;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->downTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/view/DisplayInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/NubiaOverlayDisplayWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->changeSide()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/NubiaOverlayDisplayWindow;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V

    return-void
.end method

.method private adjustSlideBarBlockPosition(F)V
    .locals 3
    .param p1, "deltaY"    # F

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    add-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr v0, p1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    :cond_0
    return-void
.end method

.method private changeSide()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mIsRightHand:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mIsRightHand:Z

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarRight:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeBar:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;

    :goto_1
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;

    const v1, 0x3020151

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;

    const v1, 0x3020146

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->changeSideAnimation()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarLeft:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeBar:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;

    goto :goto_1
.end method

.method private changeSideAnimation()V
    .locals 9

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    const-string v2, "translationX"

    new-array v3, v3, [F

    aput v6, v3, v7

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v3, v8

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "oaVScreen":Landroid/animation/ObjectAnimator;
    :goto_0
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/server/display/NubiaOverlayDisplayWindow$13;

    invoke-direct {v1, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$13;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .end local v0    # "oaVScreen":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    const-string v2, "translationX"

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v3, v7

    aput v6, v3, v8

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "oaVScreen":Landroid/animation/ObjectAnimator;
    goto :goto_0
.end method

.method private declared-synchronized changeSurfaceFlingerRefreshOptions(Z)V
    .locals 6
    .param p1, "doRefreshing"    # Z

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mIsSFRefreshing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .local v1, "flinger":Landroid/os/IBinder;
    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .local v2, "showUpdates":I
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v3, 0x7d0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "flinger":Landroid/os/IBinder;
    .end local v2    # "showUpdates":I
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private createShowAnimation()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowVisible:Z

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->showEnterAnimation()V

    return-void
.end method

.method private createWindow()V
    .locals 13

    .prologue
    const/16 v12, 0x7ea

    const/4 v11, 0x1

    const v10, 0x3f7d70a4    # 0.99f

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x3030037

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentBg:Landroid/view/View;

    const v4, 0x3030038

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, "r":Landroid/content/res/Resources;
    const v4, 0x3090077

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerBarHeight:I

    const v4, 0x3090078

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarHeight:I

    const v4, 0x309007b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSlideBarWidth:I

    const v4, 0x309007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSlideBarThumbHeight:I

    const v4, 0x309007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    const v4, 0x3090079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    const v4, 0x309007d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintPosOffset:I

    const v4, 0x309007e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintHeight:I

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->legalizeInitSizeAndPos()V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0089

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenBackGround:Landroid/view/View;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenBackGround:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget v7, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v6, 0x5a

    invoke-static {v4, v5, v6}, Lnubia/util/BlurUtil;->clipWallpaper(Landroid/content/Context;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "backgroundBlured":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenBackGround:Landroid/view/View;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0095

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d008a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerBarHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarHeight:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget-object v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setX(F)V

    :cond_1
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d008f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onBarLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0093

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarRight:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarRight:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarRight:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarRight:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onBarLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d008d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarLeft:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarLeft:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarLeft:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarLeft:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onBarLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0090

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherCenterButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0091

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherCenterHalo:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0092

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherCenterRound:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherCenterButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onMoveButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d008e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onSlideButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0094

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onSlideButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarRight:Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeBar:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;

    :goto_0
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;

    const v5, 0x3020151

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;

    const v5, 0x3020146

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d009f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d009e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d008b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarBackground:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarBackground:Landroid/view/ViewGroup;

    const v5, 0x3dcccccd    # 0.1f

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0097

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .local v2, "lowerBar":Landroid/view/View;
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d00a2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d00a4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSlideBarThumbHeight:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->onSlideBarTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d00a5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarThumbHalo:Landroid/view/View;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d00a3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarRail:Landroid/view/View;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBarRail:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSlideBarThumbHeight:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d00a0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d00a1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->ResetSlideBarAccordingToScreen()V

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->ResetMovingHintAccordingToScreen()V

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetMovingMask()V

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetSizerMask()V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    const-string v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVibrator:Landroid/os/Vibrator;

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    if-ge v4, v5, :cond_4

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScaleX:F

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScaleY:F

    :goto_1
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0099

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerLeftButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d009d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerRightButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d009b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerCenterButton:Landroid/widget/ImageView;

    const-string v4, "nubia"

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "zte"

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "TAG"

    const-string v5, "single ui load zte resources"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerCenterButton:Landroid/widget/ImageView;

    const v5, 0x3020148

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerLeftButton:Landroid/widget/ImageView;

    const v5, 0x302014a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerRightButton:Landroid/widget/ImageView;

    const v5, 0x302014a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerLeftButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOnSystemLeftKeyTouched:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerLeftButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOnSystemKeyLongClicked:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerRightButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOnSystemRightKeyTouched:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerRightButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOnSystemKeyLongClicked:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerCenterButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOnSystemHomeKeyTouched:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerCenterButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mOnSystemKeyLongClicked:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0096

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/TextureView;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v9}, Landroid/view/TextureView;->setPivotX(F)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v9}, Landroid/view/TextureView;->setPivotY(F)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v11}, Landroid/view/TextureView;->setOpaque(Z)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v4, v5}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4, v12}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v11, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v4}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->alpha:F

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4, v12}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v4}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->alpha:F

    new-instance v4, Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;

    invoke-virtual {v4}, Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;->observe()V

    new-instance v4, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;

    invoke-virtual {v4}, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;->observe()V

    return-void

    .end local v2    # "lowerBar":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarLeft:Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizeBar:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;

    goto/16 :goto_0

    .restart local v2    # "lowerBar":Landroid/view/View;
    :cond_4
    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScaleX:F

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScaleY:F

    goto/16 :goto_1

    :cond_5
    const-string v4, "TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "single ui was started by unknown brand = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private hideHaloAnimation(Landroid/view/View;)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const v2, 0x3dcccccd    # 0.1f

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .local v0, "halo":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private hideScreenHigherBarAnimation()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarBackground:Landroid/view/ViewGroup;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "oaHigherBar":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3e851eb8    # 0.26f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method private isRightHand()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mIsRightHand:Z

    return v0
.end method

.method private legalizeInitSizeAndPos()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    :cond_0
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    :cond_1
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mX:I

    if-gtz v0, :cond_2

    iput v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mX:I

    :cond_2
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mX:I

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mX:I

    :cond_3
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mY:I

    if-gtz v0, :cond_4

    iput v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mY:I

    :cond_4
    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mY:I

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerBarHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarHeight:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_5

    iget v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerBarHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarHeight:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mY:I

    :cond_5
    return-void
.end method

.method private declared-synchronized needSingleLayerRefreshHere()V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mIsSFRefreshing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->changeSurfaceFlingerRefreshOptions(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSFHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCloseSFRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSFHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCloseSFRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private relayout()V
    .locals 3

    .prologue
    sget-boolean v0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->updateWindowParams()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private resetMovingMask()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerBarHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private resetSizerMask()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerBarHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private setInputRect(IIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v5, 0x0

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v2, "mRect3":Landroid/graphics/Rect;
    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mRotated:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v0, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v0, "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p2, -0x32

    add-int v4, p1, p3

    add-int v5, p2, p4

    invoke-direct {v1, p1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v1, "mRect2":Landroid/graphics/Rect;
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/android/server/display/SingleUIRectNotifyer;->notifyInputDispatcherSingleUIRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void

    .end local v0    # "mRect":Landroid/graphics/Rect;
    .end local v1    # "mRect2":Landroid/graphics/Rect;
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v0, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v0    # "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p2, -0x32

    add-int v4, p1, p3

    add-int v5, p2, p4

    invoke-direct {v1, p1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v1    # "mRect2":Landroid/graphics/Rect;
    goto :goto_0

    .end local v0    # "mRect":Landroid/graphics/Rect;
    .end local v1    # "mRect2":Landroid/graphics/Rect;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    add-int v3, p1, p4

    add-int v4, p2, p3

    invoke-direct {v0, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v0    # "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p1, -0x32

    add-int/lit16 v4, p2, -0x96

    add-int v5, p1, p4

    add-int/lit8 v5, v5, 0x32

    add-int v6, p2, p3

    add-int/lit8 v6, v6, 0x32

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v1    # "mRect2":Landroid/graphics/Rect;
    goto :goto_0

    .end local v0    # "mRect":Landroid/graphics/Rect;
    .end local v1    # "mRect2":Landroid/graphics/Rect;
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v3, p2, 0x64

    add-int v4, p1, p4

    add-int/lit8 v5, p2, 0x64

    add-int/2addr v5, p3

    invoke-direct {v0, p1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v0    # "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p1, -0x32

    add-int/lit8 v4, p2, 0x64

    add-int/lit8 v4, v4, -0x32

    add-int v5, p1, p4

    add-int/lit8 v5, v5, 0x32

    add-int/lit8 v6, p2, 0x64

    add-int/2addr v6, p3

    add-int/lit8 v6, v6, 0x32

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v1    # "mRect2":Landroid/graphics/Rect;
    goto :goto_0

    .end local v0    # "mRect":Landroid/graphics/Rect;
    .end local v1    # "mRect2":Landroid/graphics/Rect;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v3, p2, -0x64

    add-int v4, p1, p4

    add-int/lit8 v5, p2, -0x64

    add-int/2addr v5, p3

    invoke-direct {v0, p1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v0    # "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p1, -0x32

    add-int/lit8 v4, p2, -0x64

    add-int/lit16 v4, v4, -0x96

    add-int v5, p1, p4

    add-int/lit8 v5, v5, 0x32

    add-int/lit8 v6, p2, -0x64

    add-int/2addr v6, p3

    add-int/lit8 v6, v6, 0x32

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v1    # "mRect2":Landroid/graphics/Rect;
    goto/16 :goto_0

    .end local v0    # "mRect":Landroid/graphics/Rect;
    .end local v1    # "mRect2":Landroid/graphics/Rect;
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, p1, p4

    add-int v4, p2, p3

    invoke-direct {v0, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v0    # "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p1, -0x32

    add-int/lit16 v4, p2, -0x96

    add-int v5, p1, p4

    add-int/lit8 v5, v5, 0x32

    add-int v6, p2, p3

    add-int/lit8 v6, v6, 0x32

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v1    # "mRect2":Landroid/graphics/Rect;
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "l"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x1000328

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/16 v0, 0x33

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v0, "singleUI_view_layer"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showEnterAnimation()V
    .locals 10

    .prologue
    const/4 v5, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .local v1, "scale":F
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarHeight:I

    int-to-float v4, v4

    add-float v9, v3, v4

    .local v9, "deltaY":F
    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v8, v9, v3

    .local v8, "p":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v3

    if-eqz v3, :cond_0

    move v6, v2

    :goto_0
    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .local v0, "enter":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v2, Lcom/android/server/display/NubiaOverlayDisplayWindow$11;

    invoke-direct {v2, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$11;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .end local v0    # "enter":Landroid/view/animation/ScaleAnimation;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private showExitAnimation()V
    .locals 10

    .prologue
    const/4 v5, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .local v2, "scale":F
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarHeight:I

    int-to-float v4, v4

    add-float v9, v3, v4

    .local v9, "deltaY":F
    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v8, v9, v3

    .local v8, "p":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v3

    if-eqz v3, :cond_0

    move v6, v1

    :goto_0
    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .local v0, "exit":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v1, Lcom/android/server/display/NubiaOverlayDisplayWindow$12;

    invoke-direct {v1, p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow$12;-><init>(Lcom/android/server/display/NubiaOverlayDisplayWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .end local v0    # "exit":Landroid/view/animation/ScaleAnimation;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private showHaloAnimation(Landroid/view/View;)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const v1, 0x3dcccccd    # 0.1f

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .local v0, "halo":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private showMovingHint()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v0, v1

    .local v0, "maxY":F
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float v2, v0, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showMovingStartAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x2

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "oaMovingUpper":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "oaMovingLower":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f400000    # 0.75f
    .end array-data

    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f400000    # 0.75f
    .end array-data
.end method

.method private showScreenHigherBarAnimation()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarBackground:Landroid/view/ViewGroup;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "oaHigherBar":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e851eb8    # 0.26f
    .end array-data
.end method

.method private updateDefaultDisplayInfo()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NubiaOverlayDisplayWindow"

    const-string v1, "Cannot show overlay display because there is no default display upon which to show it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateWindowParams()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v1

    .local v1, "rotation":I
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .local v0, "matrix":Landroid/graphics/Matrix;
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalWidth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->rate:F

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v2, v3, v4

    .local v2, "tran_x":F
    neg-float v3, v2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v3, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v3, v6}, Landroid/view/TextureView;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v3, v6}, Landroid/view/TextureView;->setScaleY(F)V

    invoke-virtual {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetInputRect()V

    .end local v2    # "tran_x":F
    :goto_0
    return v5

    :pswitch_1
    const-string v3, "NubiaOverlayDisplayWindow"

    const-string v4, "singleUI closed for screen is landscape"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "single_ui_close_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "single_ui_mode"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public adjustScreenPosition(FF)V
    .locals 5
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/high16 v4, 0x41a00000    # 20.0f

    const/4 p1, 0x0

    const/4 v1, 0x0

    .local v1, "minY":F
    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLogicalHeight:I

    int-to-float v0, v2

    .local v0, "maxY":F
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    add-float/2addr v2, p2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    sub-float p2, v1, v2

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setY(F)V

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->ResetSlideBarAccordingToScreen()V

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->ResetMovingHintAccordingToScreen()V

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetMovingMask()V

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetSizerMask()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, p2

    sub-float v3, v0, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, p2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    sub-float p2, v2, v3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, p2

    sub-float v3, v0, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public closeInputRect()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setInputRect(IIII)V

    return-void
.end method

.method public createDismissAnimation()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->showExitAnimation()V

    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    sget-boolean v1, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "status":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_status"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V

    invoke-virtual {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->createDismissAnimation()V

    .end local v0    # "status":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public dismissWithoutAnimation()V
    .locals 3

    .prologue
    sget-boolean v1, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowVisible:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "status":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_status"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentBg:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowVisible:Z

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;

    invoke-virtual {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow$MutiWindowContentObserver;->unobserve()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;

    invoke-virtual {v1}, Lcom/android/server/display/NubiaOverlayDisplayWindow$ChangeSideContentObserver;->unobserve()V

    :cond_1
    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSFHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mCloseSFRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .end local v0    # "status":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWindowVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWindowParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTextureView.getScaleX()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTextureView.getScaleY()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getScaleY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resetInputRect()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    iget v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->setInputRect(IIII)V

    return-void
.end method

.method public sendInjectEvent(II)V
    .locals 15
    .param p1, "action"    # I
    .param p2, "actionCode"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->downTime:J

    iget-wide v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->downTime:J

    iget-wide v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->downTime:J

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x101

    const/4 v12, 0x0

    move/from16 v5, p2

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v13

    .local v13, "down":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v13}, Landroid/view/KeyEvent;->recycle()V

    goto :goto_0

    .end local v13    # "down":Landroid/view/KeyEvent;
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->upTime:J

    iget-wide v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->downTime:J

    iget-wide v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->upTime:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x101

    const/4 v12, 0x0

    move/from16 v5, p2

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v14

    .local v14, "up":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v14, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v14}, Landroid/view/KeyEvent;->recycle()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setScreenSize(F)V
    .locals 9
    .param p1, "width"    # F

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .local v1, "oriX":I
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .local v2, "oriY":I
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    float-to-int v5, p1

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerBarHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHigherBarHeight:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    int-to-float v6, v1

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    int-to-float v6, v2

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setY(F)V

    :goto_0
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    float-to-int v5, p1

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mListener:Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    invoke-interface {v4, v5, v6}, Lcom/android/server/display/NubiaOverlayDisplayWindow$Listener;->onWindowSizeChanged(II)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v4, Landroid/view/TextureView;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v7}, Landroid/view/TextureView;->setPivotX(F)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v7}, Landroid/view/TextureView;->setPivotY(F)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/TextureView;->setOpaque(Z)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v4, v5}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .local v0, "matrix":Landroid/graphics/Matrix;
    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->rate:F

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v3, v4, v5

    .local v3, "tran_x":F
    neg-float v4, v3

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v8}, Landroid/view/TextureView;->setScaleX(F)V

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v8}, Landroid/view/TextureView;->setScaleY(F)V

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->ResetMovingHintAccordingToScreen()V

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetMovingMask()V

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->resetSizerMask()V

    return-void

    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .end local v3    # "tran_x":F
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    int-to-float v6, v2

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setY(F)V

    goto/16 :goto_0
.end method

.method public setSizerMaskSize(F)V
    .locals 5
    .param p1, "width"    # F

    .prologue
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .local v0, "oriX":I
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .local v1, "oriY":I
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    float-to-int v3, p1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mLowerBarHeight:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v0

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setY(F)V

    :goto_0
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setY(F)V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    sget-boolean v0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->updateWindowParams()Z

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentBg:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/server/display/NubiaOverlayDisplayWindow;->createShowAnimation()V

    goto :goto_0
.end method

.method public updateSUMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ss_multi_window_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "isMultiWindow":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/NubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method
