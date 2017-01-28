.class public Lnubia/widget/MorePopupRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "MorePopupRelativeLayout.java"


# instance fields
.field private mDistance:I

.field private mDownPointX:D

.field private mDownPointY:D

.field private mHistoryPointCount:I

.field private mNubiaMorePopup:Lnubia/widget/NubiaMorePopup;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mTag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lnubia/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    iput-wide v2, p0, Lnubia/widget/MorePopupRelativeLayout;->mDownPointX:D

    iput-wide v2, p0, Lnubia/widget/MorePopupRelativeLayout;->mDownPointY:D

    invoke-direct {p0, p1}, Lnubia/widget/MorePopupRelativeLayout;->initDistance(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lnubia/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    iput-wide v2, p0, Lnubia/widget/MorePopupRelativeLayout;->mDownPointX:D

    iput-wide v2, p0, Lnubia/widget/MorePopupRelativeLayout;->mDownPointY:D

    invoke-direct {p0, p1}, Lnubia/widget/MorePopupRelativeLayout;->initDistance(Landroid/content/Context;)V

    return-void
.end method

.method private initDistance(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3090070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnubia/widget/MorePopupRelativeLayout;->mDistance:I

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const-string v1, "persist.sys.gesture.capture"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move v1, v2

    :goto_1
    return v1

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lnubia/widget/MorePopupRelativeLayout;->mDownPointX:D

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lnubia/widget/MorePopupRelativeLayout;->mDownPointY:D

    goto :goto_1

    :sswitch_1
    iget v2, p0, Lnubia/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnubia/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-double v4, v3

    iget-wide v6, p0, Lnubia/widget/MorePopupRelativeLayout;->mDownPointX:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget v3, p0, Lnubia/widget/MorePopupRelativeLayout;->mDistance:I

    int-to-double v6, v3

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-double v4, v3

    iget-wide v6, p0, Lnubia/widget/MorePopupRelativeLayout;->mDownPointY:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget v3, p0, Lnubia/widget/MorePopupRelativeLayout;->mDistance:I

    int-to-double v6, v3

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1

    move v0, v1

    .local v0, "inScope":Z
    :goto_2
    iget v3, p0, Lnubia/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lnubia/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    iget v3, p0, Lnubia/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    if-gt v3, v1, :cond_2

    iget-object v3, p0, Lnubia/widget/MorePopupRelativeLayout;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnubia/widget/MorePopupRelativeLayout;->mNubiaMorePopup:Lnubia/widget/NubiaMorePopup;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lnubia/widget/MorePopupRelativeLayout;->mNubiaMorePopup:Lnubia/widget/NubiaMorePopup;

    iget-object v4, p0, Lnubia/widget/MorePopupRelativeLayout;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v4}, Lnubia/widget/NubiaMorePopup;->startExitAnimation(Landroid/widget/PopupWindow;)V

    :cond_0
    iput v2, p0, Lnubia/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    goto :goto_1

    .end local v0    # "inScope":Z
    :cond_1
    move v0, v2

    goto :goto_2

    .restart local v0    # "inScope":Z
    :cond_2
    iput v2, p0, Lnubia/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public setNubiaMorePopup(Lnubia/widget/NubiaMorePopup;)V
    .locals 0
    .param p1, "nubiaPop"    # Lnubia/widget/NubiaMorePopup;

    .prologue
    iput-object p1, p0, Lnubia/widget/MorePopupRelativeLayout;->mNubiaMorePopup:Lnubia/widget/NubiaMorePopup;

    return-void
.end method

.method public setPopupWindow(Landroid/widget/PopupWindow;)V
    .locals 0
    .param p1, "pop"    # Landroid/widget/PopupWindow;

    .prologue
    iput-object p1, p0, Lnubia/widget/MorePopupRelativeLayout;->mPopup:Landroid/widget/PopupWindow;

    return-void
.end method
