.class public Lnubia/widget/TimePickerView;
.super Landroid/widget/FrameLayout;
.source "TimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/TimePickerView$SaveState;,
        Lnubia/widget/TimePickerView$OnTimeChangeListener;
    }
.end annotation


# static fields
.field private static final HOURS_IN_HALF_DAY:I = 0xc


# instance fields
.field private mAmPmStrings:[Ljava/lang/String;

.field private mAmPmView:Lnubia/widget/WheelView;

.field protected mCurrentLocale:Ljava/util/Locale;

.field private mHourView:Lnubia/widget/WheelView;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mMinuteView:Lnubia/widget/WheelView;

.field private mOnTimeChangeListener:Lnubia/widget/TimePickerView$OnTimeChangeListener;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v8, 0x30d0082

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lnubia/widget/TimePickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x30a0020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .local v1, "pressedTextColor":I
    iget-object v3, p0, Lnubia/widget/TimePickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lnubia/widget/TimePickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v6, p0, Lnubia/widget/TimePickerView;->mIs24HourView:Z

    :goto_0
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x3030032

    invoke-virtual {v0, v3, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0, v5}, Lnubia/widget/TimePickerView;->setBackgroundColor(I)V

    const v3, 0x30d0006

    invoke-virtual {p0, v3}, Lnubia/widget/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnubia/widget/WheelView;

    iput-object v3, p0, Lnubia/widget/TimePickerView;->mHourView:Lnubia/widget/WheelView;

    iget-boolean v3, p0, Lnubia/widget/TimePickerView;->mIs24HourView:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lnubia/widget/TimePickerView;->mHourView:Lnubia/widget/WheelView;

    invoke-virtual {v3, v6}, Lnubia/widget/WheelView;->setMinValue(I)V

    iget-object v3, p0, Lnubia/widget/TimePickerView;->mHourView:Lnubia/widget/WheelView;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lnubia/widget/WheelView;->setMaxValue(I)V

    :goto_1
    iget-object v3, p0, Lnubia/widget/TimePickerView;->mHourView:Lnubia/widget/WheelView;

    invoke-static {}, Lnubia/widget/WheelView;->getTwoDigitFormatter()Lnubia/widget/WheelView$Formatter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnubia/widget/WheelView;->setFormatter(Lnubia/widget/WheelView$Formatter;)V

    iget-object v3, p0, Lnubia/widget/TimePickerView;->mHourView:Lnubia/widget/WheelView;

    new-instance v4, Lnubia/widget/TimePickerView$1;

    invoke-direct {v4, p0}, Lnubia/widget/TimePickerView$1;-><init>(Lnubia/widget/TimePickerView;)V

    invoke-virtual {v3, v4}, Lnubia/widget/WheelView;->setOnValueChangedListener(Lnubia/widget/WheelView$OnValueChangeListener;)V

    const v3, 0x30d0007

    invoke-virtual {p0, v3}, Lnubia/widget/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnubia/widget/WheelView;

    iput-object v3, p0, Lnubia/widget/TimePickerView;->mMinuteView:Lnubia/widget/WheelView;

    iget-object v3, p0, Lnubia/widget/TimePickerView;->mMinuteView:Lnubia/widget/WheelView;

    invoke-virtual {v3, v5}, Lnubia/widget/WheelView;->setMinValue(I)V

    iget-object v3, p0, Lnubia/widget/TimePickerView;->mMinuteView:Lnubia/widget/WheelView;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Lnubia/widget/WheelView;->setMaxValue(I)V

    iget-object v3, p0, Lnubia/widget/TimePickerView;->mMinuteView:Lnubia/widget/WheelView;

    invoke-static {}, Lnubia/widget/WheelView;->getTwoDigitFormatter()Lnubia/widget/WheelView$Formatter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnubia/widget/WheelView;->setFormatter(Lnubia/widget/WheelView$Formatter;)V

    iget-object v3, p0, Lnubia/widget/TimePickerView;->mMinuteView:Lnubia/widget/WheelView;

    new-instance v4, Lnubia/widget/TimePickerView$2;

    invoke-direct {v4, p0}, Lnubia/widget/TimePickerView$2;-><init>(Lnubia/widget/TimePickerView;)V

    invoke-virtual {v3, v4}, Lnubia/widget/WheelView;->setOnValueChangedListener(Lnubia/widget/WheelView$OnValueChangeListener;)V

    iget-boolean v3, p0, Lnubia/widget/TimePickerView;->mIs24HourView:Z

    if-nez v3, :cond_2

    invoke-static {p1}, Lnubia/widget/TimePickerView;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnubia/widget/TimePickerView;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {p0, v8}, Lnubia/widget/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnubia/widget/WheelView;

    iput-object v3, p0, Lnubia/widget/TimePickerView;->mAmPmView:Lnubia/widget/WheelView;

    iget-object v3, p0, Lnubia/widget/TimePickerView;->mAmPmView:Lnubia/widget/WheelView;

    invoke-virtual {v3, v5}, Lnubia/widget/WheelView;->setMinValue(I)V

    iget-object v3, p0, Lnubia/widget/TimePickerView;->mAmPmView:Lnubia/widget/WheelView;

    invoke-virtual {v3, v6}, Lnubia/widget/WheelView;->setMaxValue(I)V

    iget-object v3, p0, Lnubia/widget/TimePickerView;->mAmPmView:Lnubia/widget/WheelView;

    iget-object v4, p0, Lnubia/widget/TimePickerView;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lnubia/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v3, p0, Lnubia/widget/TimePickerView;->mAmPmView:Lnubia/widget/WheelView;

    new-instance v4, Lnubia/widget/TimePickerView$3;

    invoke-direct {v4, p0}, Lnubia/widget/TimePickerView$3;-><init>(Lnubia/widget/TimePickerView;)V

    invoke-virtual {v3, v4}, Lnubia/widget/WheelView;->setOnValueChangedListener(Lnubia/widget/WheelView$OnValueChangeListener;)V

    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnubia/widget/TimePickerView;->setCurrentLocale(Ljava/util/Locale;)V

    return-void

    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iput-boolean v5, p0, Lnubia/widget/TimePickerView;->mIs24HourView:Z

    goto/16 :goto_0

    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v3, p0, Lnubia/widget/TimePickerView;->mHourView:Lnubia/widget/WheelView;

    invoke-virtual {v3, v5}, Lnubia/widget/WheelView;->setMinValue(I)V

    iget-object v3, p0, Lnubia/widget/TimePickerView;->mHourView:Lnubia/widget/WheelView;

    const/16 v4, 0x17

    invoke-virtual {v3, v4}, Lnubia/widget/WheelView;->setMaxValue(I)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0, v8}, Lnubia/widget/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnubia/widget/WheelView;

    iput-object v3, p0, Lnubia/widget/TimePickerView;->mAmPmView:Lnubia/widget/WheelView;

    iget-object v3, p0, Lnubia/widget/TimePickerView;->mAmPmView:Lnubia/widget/WheelView;

    invoke-virtual {v3, v7}, Lnubia/widget/WheelView;->setVisibility(I)V

    const v3, 0x30d0083

    invoke-virtual {p0, v3}, Lnubia/widget/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .local v2, "timeHourTextView":Landroid/widget/TextView;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lnubia/widget/TimePickerView;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/TimePickerView;

    .prologue
    invoke-direct {p0}, Lnubia/widget/TimePickerView;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$100(Lnubia/widget/TimePickerView;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/widget/TimePickerView;

    .prologue
    iget-boolean v0, p0, Lnubia/widget/TimePickerView;->mIsAm:Z

    return v0
.end method

.method static synthetic access$102(Lnubia/widget/TimePickerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lnubia/widget/TimePickerView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lnubia/widget/TimePickerView;->mIsAm:Z

    return p1
.end method

.method static synthetic access$200(Lnubia/widget/TimePickerView;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/TimePickerView;

    .prologue
    invoke-direct {p0}, Lnubia/widget/TimePickerView;->updateAmPmControl()V

    return-void
.end method

.method public static getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x30c0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x30c0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    iget-object v0, p0, Lnubia/widget/TimePickerView;->mOnTimeChangeListener:Lnubia/widget/TimePickerView$OnTimeChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/TimePickerView;->mOnTimeChangeListener:Lnubia/widget/TimePickerView$OnTimeChangeListener;

    invoke-virtual {p0}, Lnubia/widget/TimePickerView;->getCurrentHour()I

    move-result v1

    invoke-virtual {p0}, Lnubia/widget/TimePickerView;->getCurrentMinute()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lnubia/widget/TimePickerView$OnTimeChangeListener;->onTimeChanged(Lnubia/widget/TimePickerView;II)V

    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Lnubia/widget/TimePickerView;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lnubia/widget/TimePickerView;->mAmPmView:Lnubia/widget/WheelView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnubia/widget/TimePickerView;->mAmPmView:Lnubia/widget/WheelView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lnubia/widget/WheelView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lnubia/widget/TimePickerView;->mIsAm:Z

    if-eqz v2, :cond_2

    move v0, v1

    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lnubia/widget/TimePickerView;->mAmPmView:Lnubia/widget/WheelView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnubia/widget/TimePickerView;->mAmPmView:Lnubia/widget/WheelView;

    invoke-virtual {v2, v0}, Lnubia/widget/WheelView;->setValue(I)V

    iget-object v2, p0, Lnubia/widget/TimePickerView;->mAmPmView:Lnubia/widget/WheelView;

    invoke-virtual {v2, v1}, Lnubia/widget/WheelView;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "index":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final getCurrentHour()I
    .locals 2

    .prologue
    iget-object v1, p0, Lnubia/widget/TimePickerView;->mHourView:Lnubia/widget/WheelView;

    invoke-virtual {v1}, Lnubia/widget/WheelView;->getValue()I

    move-result v0

    .local v0, "currentHour":I
    invoke-virtual {p0}, Lnubia/widget/TimePickerView;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "currentHour":I
    :goto_0
    return v0

    .restart local v0    # "currentHour":I
    :cond_0
    iget-boolean v1, p0, Lnubia/widget/TimePickerView;->mIsAm:Z

    if-eqz v1, :cond_1

    rem-int/lit8 v0, v0, 0xc

    goto :goto_0

    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v0, v1, 0xc

    goto :goto_0
.end method

.method public final getCurrentMinute()I
    .locals 1

    .prologue
    iget-object v0, p0, Lnubia/widget/TimePickerView;->mMinuteView:Lnubia/widget/WheelView;

    invoke-virtual {v0}, Lnubia/widget/WheelView;->getValue()I

    move-result v0

    return v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lnubia/widget/TimePickerView;->mIs24HourView:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lnubia/widget/TimePickerView;->mMinuteView:Lnubia/widget/WheelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/TimePickerView;->mMinuteView:Lnubia/widget/WheelView;

    invoke-virtual {v0}, Lnubia/widget/WheelView;->getMiddleTop()I

    move-result v7

    .local v7, "top":I
    iget-object v0, p0, Lnubia/widget/TimePickerView;->mMinuteView:Lnubia/widget/WheelView;

    invoke-virtual {v0}, Lnubia/widget/WheelView;->getMiddleBottom()I

    move-result v6

    .local v6, "bottom":I
    const/4 v1, 0x0

    int-to-float v2, v7

    invoke-virtual {p0}, Lnubia/widget/TimePickerView;->getRight()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lnubia/widget/TimePickerView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .end local v6    # "bottom":I
    .end local v7    # "top":I
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    check-cast v0, Lnubia/widget/TimePickerView$SaveState;

    .local v0, "ss":Lnubia/widget/TimePickerView$SaveState;
    invoke-virtual {v0}, Lnubia/widget/TimePickerView$SaveState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lnubia/widget/TimePickerView$SaveState;->mHour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnubia/widget/TimePickerView;->setCurrentHour(Ljava/lang/Integer;)V

    iget v1, v0, Lnubia/widget/TimePickerView$SaveState;->mMinute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnubia/widget/TimePickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lnubia/widget/TimePickerView$SaveState;

    invoke-virtual {p0}, Lnubia/widget/TimePickerView;->getCurrentHour()I

    move-result v2

    invoke-virtual {p0}, Lnubia/widget/TimePickerView;->getCurrentMinute()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lnubia/widget/TimePickerView$SaveState;-><init>(Landroid/os/Parcelable;II)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    const/16 v2, 0xc

    if-nez p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lnubia/widget/TimePickerView;->getCurrentHour()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lnubia/widget/TimePickerView;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v2, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/widget/TimePickerView;->mIsAm:Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-direct {p0}, Lnubia/widget/TimePickerView;->updateAmPmControl()V

    :cond_2
    iget-object v0, p0, Lnubia/widget/TimePickerView;->mHourView:Lnubia/widget/WheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lnubia/widget/WheelView;->setValue(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/widget/TimePickerView;->mIsAm:Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    iget-object v0, p0, Lnubia/widget/TimePickerView;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lnubia/widget/TimePickerView;->mCurrentLocale:Ljava/util/Locale;

    goto :goto_0
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    if-nez p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lnubia/widget/TimePickerView;->getCurrentMinute()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnubia/widget/TimePickerView;->mMinuteView:Lnubia/widget/WheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lnubia/widget/WheelView;->setValue(I)V

    goto :goto_0
.end method

.method public final setOnTimeChangedListener(Lnubia/widget/TimePickerView$OnTimeChangeListener;)V
    .locals 0
    .param p1, "onTimeChangeListener"    # Lnubia/widget/TimePickerView$OnTimeChangeListener;

    .prologue
    iput-object p1, p0, Lnubia/widget/TimePickerView;->mOnTimeChangeListener:Lnubia/widget/TimePickerView$OnTimeChangeListener;

    return-void
.end method
