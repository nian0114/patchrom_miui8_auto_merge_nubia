.class public Lcn/nubia/commonui/widget/TimePickerView;
.super Landroid/widget/FrameLayout;
.source "TimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/TimePickerView$SaveState;,
        Lcn/nubia/commonui/widget/TimePickerView$OnTimeChangeListener;
    }
.end annotation


# instance fields
.field private mAmPmView:Lcn/nubia/commonui/widget/WheelView;

.field protected mCurrentLocale:Ljava/util/Locale;

.field private mHourView:Lcn/nubia/commonui/widget/WheelView;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mMinuteView:Lcn/nubia/commonui/widget/WheelView;

.field private mOnTimeChangeListener:Lcn/nubia/commonui/widget/TimePickerView$OnTimeChangeListener;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mPaint:Landroid/graphics/Paint;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$color;->nubia_wheelview_middle_zone_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 51
    .local v2, "pressedTextColor":I
    iget-object v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TimePickerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mIs24HourView:Z

    .line 54
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 56
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v4, Lcn/nubia/commonui/R$layout;->nubia_time_picker:I

    invoke-virtual {v1, v4, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 58
    invoke-virtual {p0, v6}, Lcn/nubia/commonui/widget/TimePickerView;->setBackgroundColor(I)V

    .line 59
    sget v4, Lcn/nubia/commonui/R$id;->nubia_hour_spinner:I

    invoke-virtual {p0, v4}, Lcn/nubia/commonui/widget/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcn/nubia/commonui/widget/WheelView;

    iput-object v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    .line 60
    iget-boolean v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mIs24HourView:Z

    if-nez v4, :cond_0

    .line 61
    iget-object v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v4, v7}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 62
    iget-object v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 67
    :goto_0
    iget-object v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    invoke-static {}, Lcn/nubia/commonui/widget/WheelView;->getTwoDigitFormatter()Lcn/nubia/commonui/widget/WheelView$Formatter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/widget/WheelView;->setFormatter(Lcn/nubia/commonui/widget/WheelView$Formatter;)V

    .line 68
    iget-object v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    new-instance v5, Lcn/nubia/commonui/widget/TimePickerView$1;

    invoke-direct {v5, p0}, Lcn/nubia/commonui/widget/TimePickerView$1;-><init>(Lcn/nubia/commonui/widget/TimePickerView;)V

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/widget/WheelView;->setOnValueChangedListener(Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;)V

    .line 77
    sget v4, Lcn/nubia/commonui/R$id;->nubia_minute_spinner:I

    invoke-virtual {p0, v4}, Lcn/nubia/commonui/widget/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcn/nubia/commonui/widget/WheelView;

    iput-object v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    .line 78
    iget-object v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v4, v6}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 79
    iget-object v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 80
    iget-object v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    invoke-static {}, Lcn/nubia/commonui/widget/WheelView;->getTwoDigitFormatter()Lcn/nubia/commonui/widget/WheelView$Formatter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/widget/WheelView;->setFormatter(Lcn/nubia/commonui/widget/WheelView$Formatter;)V

    .line 81
    iget-object v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    new-instance v5, Lcn/nubia/commonui/widget/TimePickerView$2;

    invoke-direct {v5, p0}, Lcn/nubia/commonui/widget/TimePickerView$2;-><init>(Lcn/nubia/commonui/widget/TimePickerView;)V

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/widget/WheelView;->setOnValueChangedListener(Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;)V

    .line 90
    iget-boolean v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mIs24HourView:Z

    if-nez v4, :cond_1

    .line 91
    invoke-static {p1}, Lcn/nubia/commonui/widget/TimePickerView;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "amPmStrings":[Ljava/lang/String;
    sget v4, Lcn/nubia/commonui/R$id;->nubia_ampm_spinner:I

    invoke-virtual {p0, v4}, Lcn/nubia/commonui/widget/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcn/nubia/commonui/widget/WheelView;

    iput-object v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mAmPmView:Lcn/nubia/commonui/widget/WheelView;

    .line 93
    iget-object v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mAmPmView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v4, v6}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 94
    iget-object v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mAmPmView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v4, v7}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 95
    iget-object v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mAmPmView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v4, v0}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 96
    iget-object v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mAmPmView:Lcn/nubia/commonui/widget/WheelView;

    new-instance v5, Lcn/nubia/commonui/widget/TimePickerView$3;

    invoke-direct {v5, p0}, Lcn/nubia/commonui/widget/TimePickerView$3;-><init>(Lcn/nubia/commonui/widget/TimePickerView;)V

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/widget/WheelView;->setOnValueChangedListener(Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;)V

    .line 112
    .end local v0    # "amPmStrings":[Ljava/lang/String;
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcn/nubia/commonui/widget/TimePickerView;->setCurrentLocale(Ljava/util/Locale;)V

    .line 114
    return-void

    .line 64
    :cond_0
    iget-object v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v4, v6}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 65
    iget-object v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    goto :goto_0

    .line 107
    :cond_1
    sget v4, Lcn/nubia/commonui/R$id;->nubia_ampm_spinner:I

    invoke-virtual {p0, v4}, Lcn/nubia/commonui/widget/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcn/nubia/commonui/widget/WheelView;

    iput-object v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mAmPmView:Lcn/nubia/commonui/widget/WheelView;

    .line 108
    iget-object v4, p0, Lcn/nubia/commonui/widget/TimePickerView;->mAmPmView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v4, v8}, Lcn/nubia/commonui/widget/WheelView;->setVisibility(I)V

    .line 109
    sget v4, Lcn/nubia/commonui/R$id;->nubia_time_hour_textview:I

    invoke-virtual {p0, v4}, Lcn/nubia/commonui/widget/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 110
    .local v3, "timeHourTextView":Landroid/widget/TextView;
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/widget/TimePickerView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/TimePickerView;

    .prologue
    .line 19
    invoke-direct {p0}, Lcn/nubia/commonui/widget/TimePickerView;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/commonui/widget/TimePickerView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/TimePickerView;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/TimePickerView;->mIsAm:Z

    return v0
.end method

.method static synthetic access$102(Lcn/nubia/commonui/widget/TimePickerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/TimePickerView;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/TimePickerView;->mIsAm:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/commonui/widget/TimePickerView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/TimePickerView;

    .prologue
    .line 19
    invoke-direct {p0}, Lcn/nubia/commonui/widget/TimePickerView;->updateAmPmControl()V

    return-void
.end method

.method public static getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 249
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/commonui/R$string;->nubia_time_am:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 251
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/commonui/R$string;->nubia_time_pm:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 253
    return-object v0
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerView;->mOnTimeChangeListener:Lcn/nubia/commonui/widget/TimePickerView$OnTimeChangeListener;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerView;->mOnTimeChangeListener:Lcn/nubia/commonui/widget/TimePickerView$OnTimeChangeListener;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TimePickerView;->getCurrentHour()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TimePickerView;->getCurrentMinute()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcn/nubia/commonui/widget/TimePickerView$OnTimeChangeListener;->onTimeChanged(Lcn/nubia/commonui/widget/TimePickerView;II)V

    .line 138
    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 261
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TimePickerView;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    iget-object v1, p0, Lcn/nubia/commonui/widget/TimePickerView;->mAmPmView:Lcn/nubia/commonui/widget/WheelView;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcn/nubia/commonui/widget/TimePickerView;->mAmPmView:Lcn/nubia/commonui/widget/WheelView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/WheelView;->setVisibility(I)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-boolean v2, p0, Lcn/nubia/commonui/widget/TimePickerView;->mIsAm:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 267
    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lcn/nubia/commonui/widget/TimePickerView;->mAmPmView:Lcn/nubia/commonui/widget/WheelView;

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Lcn/nubia/commonui/widget/TimePickerView;->mAmPmView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v2, v0}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 269
    iget-object v2, p0, Lcn/nubia/commonui/widget/TimePickerView;->mAmPmView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v2, v1}, Lcn/nubia/commonui/widget/WheelView;->setVisibility(I)V

    goto :goto_0

    .line 266
    .end local v0    # "index":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final getCurrentHour()I
    .locals 2

    .prologue
    .line 178
    iget-object v1, p0, Lcn/nubia/commonui/widget/TimePickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v0

    .line 179
    .local v0, "currentHour":I
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TimePickerView;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    .end local v0    # "currentHour":I
    :goto_0
    return v0

    .line 181
    .restart local v0    # "currentHour":I
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/TimePickerView;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 182
    rem-int/lit8 v0, v0, 0xc

    goto :goto_0

    .line 184
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v0, v1, 0xc

    goto :goto_0
.end method

.method public final getCurrentMinute()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v0

    return v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/TimePickerView;->mIs24HourView:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 119
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getMiddleTop()I

    move-result v7

    .line 121
    .local v7, "top":I
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getMiddleBottom()I

    move-result v6

    .line 122
    .local v6, "bottom":I
    const/4 v1, 0x0

    int-to-float v2, v7

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TimePickerView;->getRight()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcn/nubia/commonui/widget/TimePickerView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 124
    .end local v6    # "bottom":I
    .end local v7    # "top":I
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 235
    move-object v0, p1

    check-cast v0, Lcn/nubia/commonui/widget/TimePickerView$SaveState;

    .line 236
    .local v0, "ss":Lcn/nubia/commonui/widget/TimePickerView$SaveState;
    invoke-virtual {v0}, Lcn/nubia/commonui/widget/TimePickerView$SaveState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 237
    iget v1, v0, Lcn/nubia/commonui/widget/TimePickerView$SaveState;->mHour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/widget/TimePickerView;->setCurrentHour(Ljava/lang/Integer;)V

    .line 238
    iget v1, v0, Lcn/nubia/commonui/widget/TimePickerView$SaveState;->mMinute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/widget/TimePickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 239
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 243
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 244
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcn/nubia/commonui/widget/TimePickerView$SaveState;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TimePickerView;->getCurrentHour()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TimePickerView;->getCurrentMinute()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcn/nubia/commonui/widget/TimePickerView$SaveState;-><init>(Landroid/os/Parcelable;II)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    const/16 v2, 0xc

    .line 194
    if-nez p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TimePickerView;->getCurrentHour()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 216
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TimePickerView;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 200
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v2, :cond_3

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/TimePickerView;->mIsAm:Z

    .line 202
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 203
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 211
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcn/nubia/commonui/widget/TimePickerView;->updateAmPmControl()V

    .line 214
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    goto :goto_0

    .line 206
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/TimePickerView;->mIsAm:Z

    .line 207
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 208
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 127
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerView;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/widget/TimePickerView;->mCurrentLocale:Ljava/util/Locale;

    goto :goto_0
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 220
    if-nez p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TimePickerView;->getCurrentMinute()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    goto :goto_0
.end method

.method public final setOnTimeChangedListener(Lcn/nubia/commonui/widget/TimePickerView$OnTimeChangeListener;)V
    .locals 0
    .param p1, "onTimeChangeListener"    # Lcn/nubia/commonui/widget/TimePickerView$OnTimeChangeListener;

    .prologue
    .line 230
    iput-object p1, p0, Lcn/nubia/commonui/widget/TimePickerView;->mOnTimeChangeListener:Lcn/nubia/commonui/widget/TimePickerView$OnTimeChangeListener;

    .line 231
    return-void
.end method
