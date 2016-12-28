.class public Lnubia/widget/NubiaAnalogClock;
.super Landroid/view/View;
.source "NubiaAnalogClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private m24Hour:Z

.field private mAmString:Ljava/lang/String;

.field private mAmpmPaint:Landroid/graphics/Paint;

.field private mAmpmString:Ljava/lang/String;

.field private mAttached:Z

.field private mCalendar:Landroid/text/format/Time;

.field private mChanged:Z

.field private mContext:Landroid/content/Context;

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mDialHeight:I

.field private mDialWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mHour:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mMinutes:F

.field private mPmString:Ljava/lang/String;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnubia/widget/NubiaAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnubia/widget/NubiaAnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mHandler:Landroid/os/Handler;

    new-instance v5, Lnubia/widget/NubiaAnalogClock$1;

    invoke-direct {v5, p0}, Lnubia/widget/NubiaAnalogClock$1;-><init>(Lnubia/widget/NubiaAnalogClock;)V

    iput-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lnubia/widget/NubiaAnalogClock;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/text/DateFormatSymbols;

    invoke-direct {v5}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v5}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    .local v1, "ampmArray":[Ljava/lang/String;
    aget-object v5, v1, v6

    iput-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mAmString:Ljava/lang/String;

    aget-object v5, v1, v7

    iput-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mPmString:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, "resources":Landroid/content/res/Resources;
    sget-object v5, Lcn/nubia/internal/R$styleable;->ClockWidgetAnalogClock:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_0

    const v5, 0x3020008

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1

    const v5, 0x302000e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    :cond_1
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    const v5, 0x302000c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    :cond_2
    invoke-direct {p0}, Lnubia/widget/NubiaAnalogClock;->is24Hour()V

    iget-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mTimeZone:Ljava/lang/String;

    if-eqz v5, :cond_3

    new-instance v5, Landroid/text/format/Time;

    iget-object v6, p0, Lnubia/widget/NubiaAnalogClock;->mTimeZone:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    :goto_0
    iget-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iput v5, p0, Lnubia/widget/NubiaAnalogClock;->mDialWidth:I

    iget-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    iput v5, p0, Lnubia/widget/NubiaAnalogClock;->mDialHeight:I

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mAmpmPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mAmpmPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v5, 0x3

    const/high16 v6, 0x420c0000    # 35.0f

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .local v4, "textSize":F
    const/4 v5, 0x4

    const/high16 v6, -0x10000

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .local v3, "textColor":I
    iget-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mAmpmPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mAmpmPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    .end local v3    # "textColor":I
    .end local v4    # "textSize":F
    :cond_3
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    iput-object v5, p0, Lnubia/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    goto :goto_0
.end method

.method static synthetic access$000(Lnubia/widget/NubiaAnalogClock;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaAnalogClock;

    .prologue
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lnubia/widget/NubiaAnalogClock;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaAnalogClock;
    .param p1, "x1"    # Landroid/text/format/Time;

    .prologue
    iput-object p1, p0, Lnubia/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$200(Lnubia/widget/NubiaAnalogClock;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaAnalogClock;

    .prologue
    invoke-direct {p0}, Lnubia/widget/NubiaAnalogClock;->is24Hour()V

    return-void
.end method

.method static synthetic access$300(Lnubia/widget/NubiaAnalogClock;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaAnalogClock;

    .prologue
    invoke-direct {p0}, Lnubia/widget/NubiaAnalogClock;->onTimeChanged()V

    return-void
.end method

.method private is24Hour()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/widget/NubiaAnalogClock;->m24Hour:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/widget/NubiaAnalogClock;->m24Hour:Z

    goto :goto_0
.end method

.method private onTimeChanged()V
    .locals 6

    .prologue
    const/high16 v5, 0x42700000    # 60.0f

    iget-object v3, p0, Lnubia/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    iget-object v3, p0, Lnubia/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v0, v3, Landroid/text/format/Time;->hour:I

    .local v0, "hour":I
    iget-object v3, p0, Lnubia/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v1, v3, Landroid/text/format/Time;->minute:I

    .local v1, "minute":I
    iget-object v3, p0, Lnubia/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v2, v3, Landroid/text/format/Time;->second:I

    .local v2, "second":I
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lnubia/widget/NubiaAnalogClock;->mMinutes:F

    int-to-float v3, v0

    iget v4, p0, Lnubia/widget/NubiaAnalogClock;->mMinutes:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lnubia/widget/NubiaAnalogClock;->mHour:F

    const/4 v3, 0x1

    iput-boolean v3, p0, Lnubia/widget/NubiaAnalogClock;->mChanged:Z

    iget-boolean v3, p0, Lnubia/widget/NubiaAnalogClock;->m24Hour:Z

    if-nez v3, :cond_1

    const/16 v3, 0xc

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lnubia/widget/NubiaAnalogClock;->mAmString:Ljava/lang/String;

    iput-object v3, p0, Lnubia/widget/NubiaAnalogClock;->mAmpmString:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lnubia/widget/NubiaAnalogClock;->mPmString:Ljava/lang/String;

    iput-object v3, p0, Lnubia/widget/NubiaAnalogClock;->mAmpmString:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lnubia/widget/NubiaAnalogClock;->mAmpmString:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v1, p0, Lnubia/widget/NubiaAnalogClock;->mAttached:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnubia/widget/NubiaAnalogClock;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnubia/widget/NubiaAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lnubia/widget/NubiaAnalogClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mTimeZone:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lnubia/widget/NubiaAnalogClock;->mTimeZone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    :goto_0
    invoke-direct {p0}, Lnubia/widget/NubiaAnalogClock;->onTimeChanged()V

    return-void

    :cond_1
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lnubia/widget/NubiaAnalogClock;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/widget/NubiaAnalogClock;->mAttached:Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lnubia/widget/NubiaAnalogClock;->mChanged:Z

    .local v8, "changed":Z
    if-eqz v8, :cond_0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnubia/widget/NubiaAnalogClock;->mChanged:Z

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaAnalogClock;->getRight()I

    move-result v15

    .local v15, "right":I
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaAnalogClock;->getLeft()I

    move-result v13

    .local v13, "left":I
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaAnalogClock;->getBottom()I

    move-result v7

    .local v7, "bottom":I
    invoke-virtual/range {p0 .. p0}, Lnubia/widget/NubiaAnalogClock;->getTop()I

    move-result v18

    .local v18, "top":I
    sub-int v6, v15, v13

    .local v6, "availableWidth":I
    sub-int v5, v7, v18

    .local v5, "availableHeight":I
    div-int/lit8 v20, v6, 0x2

    .local v20, "x":I
    div-int/lit8 v21, v5, 0x2

    .local v21, "y":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lnubia/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .local v9, "dial":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    .local v19, "w":I
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .local v11, "h":I
    const/16 v17, 0x0

    .local v17, "scaled":Z
    move/from16 v0, v19

    if-lt v6, v0, :cond_1

    if-ge v5, v11, :cond_2

    :cond_1
    const/16 v17, 0x1

    int-to-float v0, v6

    move/from16 v22, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    int-to-float v0, v5

    move/from16 v23, v0

    int-to-float v0, v11

    move/from16 v24, v0

    div-float v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .local v16, "scale":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v16

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .end local v16    # "scale":F
    :cond_2
    if-eqz v8, :cond_3

    div-int/lit8 v22, v19, 0x2

    sub-int v22, v20, v22

    div-int/lit8 v23, v11, 0x2

    sub-int v23, v21, v23

    div-int/lit8 v24, v19, 0x2

    add-int v24, v24, v20

    div-int/lit8 v25, v11, 0x2

    add-int v25, v25, v21

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnubia/widget/NubiaAnalogClock;->m24Hour:Z

    move/from16 v22, v0

    if-nez v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaAnalogClock;->mAmpmString:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaAnalogClock;->mAmpmPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    .local v10, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaAnalogClock;->mAmpmString:Ljava/lang/String;

    move-object/from16 v22, v0

    div-int/lit8 v23, v19, 0x2

    sub-int v23, v20, v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-int/lit8 v24, v11, 0x2

    add-int v24, v24, v21

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/widget/NubiaAnalogClock;->mAmpmPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .end local v10    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget v0, v0, Lnubia/widget/NubiaAnalogClock;->mMinutes:F

    move/from16 v22, v0

    const/high16 v23, 0x42700000    # 60.0f

    div-float v22, v22, v23

    const/high16 v23, 0x43b40000    # 360.0f

    mul-float v22, v22, v23

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lnubia/widget/NubiaAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .local v14, "minuteHand":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_5

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    div-int/lit8 v22, v19, 0x2

    sub-int v22, v20, v22

    div-int/lit8 v23, v11, 0x2

    sub-int v23, v21, v23

    div-int/lit8 v24, v19, 0x2

    add-int v24, v24, v20

    div-int/lit8 v25, v11, 0x2

    add-int v25, v25, v21

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget v0, v0, Lnubia/widget/NubiaAnalogClock;->mHour:F

    move/from16 v22, v0

    const/high16 v23, 0x41400000    # 12.0f

    div-float v22, v22, v23

    const/high16 v23, 0x43b40000    # 360.0f

    mul-float v22, v22, v23

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lnubia/widget/NubiaAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .local v12, "hourHand":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_6

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    div-int/lit8 v22, v19, 0x2

    sub-int v22, v20, v22

    div-int/lit8 v23, v11, 0x2

    sub-int v23, v21, v23

    div-int/lit8 v24, v19, 0x2

    add-int v24, v24, v20

    div-int/lit8 v25, v11, 0x2

    add-int v25, v25, v21

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v17, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .local v6, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .local v2, "heightSize":I
    const/high16 v0, 0x3f800000    # 1.0f

    .local v0, "hScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "vScale":F
    if-eqz v5, :cond_0

    iget v7, p0, Lnubia/widget/NubiaAnalogClock;->mDialWidth:I

    if-ge v6, v7, :cond_0

    int-to-float v7, v6

    iget v8, p0, Lnubia/widget/NubiaAnalogClock;->mDialWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    :cond_0
    if-eqz v1, :cond_1

    iget v7, p0, Lnubia/widget/NubiaAnalogClock;->mDialHeight:I

    if-ge v2, v7, :cond_1

    int-to-float v7, v2

    iget v8, p0, Lnubia/widget/NubiaAnalogClock;->mDialHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .local v3, "scale":F
    iget v7, p0, Lnubia/widget/NubiaAnalogClock;->mDialWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1}, Lnubia/widget/NubiaAnalogClock;->resolveSize(II)I

    move-result v7

    iget v8, p0, Lnubia/widget/NubiaAnalogClock;->mDialHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2}, Lnubia/widget/NubiaAnalogClock;->resolveSize(II)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lnubia/widget/NubiaAnalogClock;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/widget/NubiaAnalogClock;->mChanged:Z

    return-void
.end method

.method public setLightClock(Z)V
    .locals 6
    .param p1, "isLight"    # Z

    .prologue
    const v5, 0x302000d

    const v4, 0x3020005

    const/4 v3, 0x1

    iget-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "resources":Landroid/content/res/Resources;
    iget v1, p0, Lnubia/widget/NubiaAnalogClock;->mDialWidth:I

    const/16 v2, 0x21c

    if-ne v1, v2, :cond_3

    if-eqz p1, :cond_2

    const v1, 0x3020002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    const v1, 0x3020003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    :goto_1
    iput-boolean v3, p0, Lnubia/widget/NubiaAnalogClock;->mChanged:Z

    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogClock;->invalidate()V

    goto :goto_0

    :cond_2
    const v1, 0x3020009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    const v1, 0x3020004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iget v1, p0, Lnubia/widget/NubiaAnalogClock;->mDialWidth:I

    const/16 v2, 0x193

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_4

    const v1, 0x3020006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    const v1, 0x302000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    :goto_2
    iput-boolean v3, p0, Lnubia/widget/NubiaAnalogClock;->mChanged:Z

    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogClock;->invalidate()V

    goto :goto_0

    :cond_4
    const v1, 0x3020007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    const v1, 0x302000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 2
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lnubia/widget/NubiaAnalogClock;->mTimeZone:Ljava/lang/String;

    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lnubia/widget/NubiaAnalogClock;->mTimeZone:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnubia/widget/NubiaAnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-direct {p0}, Lnubia/widget/NubiaAnalogClock;->onTimeChanged()V

    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogClock;->invalidate()V

    goto :goto_0
.end method
