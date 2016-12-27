.class public Lcn/nubia/commonui/widget/DatePickerView;
.super Landroid/widget/FrameLayout;
.source "DatePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/DatePickerView$SavedState;,
        Lcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;
    }
.end annotation


# instance fields
.field private mDay:I

.field private mDayLabel:Landroid/widget/TextView;

.field private mDayView:Lcn/nubia/commonui/widget/WheelView;

.field private mMaxDayOfMonth:I

.field private mMonth:I

.field private mMonthLabel:Landroid/widget/TextView;

.field private mMonthView:Lcn/nubia/commonui/widget/WheelView;

.field private mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mYear:I

.field private mYearLabel:Landroid/widget/TextView;

.field private mYearView:Lcn/nubia/commonui/widget/WheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v11, 0xc

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mPaint:Landroid/graphics/Paint;

    .line 58
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcn/nubia/commonui/R$color;->nubia_wheelview_middle_zone_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 60
    .local v5, "middleZoneColor":I
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 63
    .local v4, "inflater":Landroid/view/LayoutInflater;
    sget v7, Lcn/nubia/commonui/R$layout;->nubia_date_picker:I

    invoke-virtual {v4, v7, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 65
    invoke-virtual {p0, v9}, Lcn/nubia/commonui/widget/DatePickerView;->setBackgroundColor(I)V

    .line 67
    sget v7, Lcn/nubia/commonui/R$id;->nubia_year_label:I

    invoke-virtual {p0, v7}, Lcn/nubia/commonui/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYearLabel:Landroid/widget/TextView;

    .line 68
    sget v7, Lcn/nubia/commonui/R$id;->nubia_month_label:I

    invoke-virtual {p0, v7}, Lcn/nubia/commonui/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthLabel:Landroid/widget/TextView;

    .line 69
    sget v7, Lcn/nubia/commonui/R$id;->nubia_day_label:I

    invoke-virtual {p0, v7}, Lcn/nubia/commonui/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayLabel:Landroid/widget/TextView;

    .line 71
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "currentLanguage":Ljava/lang/String;
    const-string v7, "zh"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ja"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ko"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 75
    :cond_0
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYearLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    :cond_1
    sget v7, Lcn/nubia/commonui/R$id;->nubia_year_spinner:I

    invoke-virtual {p0, v7}, Lcn/nubia/commonui/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcn/nubia/commonui/widget/WheelView;

    iput-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYearView:Lcn/nubia/commonui/widget/WheelView;

    .line 81
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYearView:Lcn/nubia/commonui/widget/WheelView;

    const/16 v8, 0x7b2

    invoke-virtual {v7, v8}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 82
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYearView:Lcn/nubia/commonui/widget/WheelView;

    const/16 v8, 0x7f5

    invoke-virtual {v7, v8}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 83
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYearView:Lcn/nubia/commonui/widget/WheelView;

    new-instance v8, Lcn/nubia/commonui/widget/DatePickerView$1;

    invoke-direct {v8, p0}, Lcn/nubia/commonui/widget/DatePickerView$1;-><init>(Lcn/nubia/commonui/widget/DatePickerView;)V

    invoke-virtual {v7, v8}, Lcn/nubia/commonui/widget/WheelView;->setOnValueChangedListener(Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;)V

    .line 95
    sget v7, Lcn/nubia/commonui/R$id;->nubia_month_spinner:I

    invoke-virtual {p0, v7}, Lcn/nubia/commonui/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcn/nubia/commonui/widget/WheelView;

    iput-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    .line 96
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    invoke-static {}, Lcn/nubia/commonui/widget/WheelView;->getTwoDigitFormatter()Lcn/nubia/commonui/widget/WheelView$Formatter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/nubia/commonui/widget/WheelView;->setFormatter(Lcn/nubia/commonui/widget/WheelView$Formatter;)V

    .line 97
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 98
    .local v2, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, "months":[Ljava/lang/String;
    aget-object v7, v6, v9

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 100
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_2

    .line 101
    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    :cond_2
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v7, v10}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 104
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v7, v11}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 110
    .end local v3    # "i":I
    :goto_1
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    new-instance v8, Lcn/nubia/commonui/widget/DatePickerView$2;

    invoke-direct {v8, p0}, Lcn/nubia/commonui/widget/DatePickerView$2;-><init>(Lcn/nubia/commonui/widget/DatePickerView;)V

    invoke-virtual {v7, v8}, Lcn/nubia/commonui/widget/WheelView;->setOnValueChangedListener(Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;)V

    .line 122
    sget v7, Lcn/nubia/commonui/R$id;->nubia_day_spinner:I

    invoke-virtual {p0, v7}, Lcn/nubia/commonui/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcn/nubia/commonui/widget/WheelView;

    iput-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    .line 123
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    invoke-static {}, Lcn/nubia/commonui/widget/WheelView;->getTwoDigitFormatter()Lcn/nubia/commonui/widget/WheelView$Formatter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/nubia/commonui/widget/WheelView;->setFormatter(Lcn/nubia/commonui/widget/WheelView$Formatter;)V

    .line 124
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    new-instance v8, Lcn/nubia/commonui/widget/DatePickerView$3;

    invoke-direct {v8, p0}, Lcn/nubia/commonui/widget/DatePickerView$3;-><init>(Lcn/nubia/commonui/widget/DatePickerView;)V

    invoke-virtual {v7, v8}, Lcn/nubia/commonui/widget/WheelView;->setOnValueChangedListener(Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;)V

    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 134
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v8, v9, v10}, Lcn/nubia/commonui/widget/DatePickerView;->update(IIILcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;)V

    .line 136
    return-void

    .line 106
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_3
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v7, v10}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 107
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v7, v11}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 108
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v7, v6}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/commonui/widget/DatePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    return p1
.end method

.method static synthetic access$102(Lcn/nubia/commonui/widget/DatePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    return p1
.end method

.method static synthetic access$202(Lcn/nubia/commonui/widget/DatePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    return p1
.end method


# virtual methods
.method public final adjustMaxDay()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 162
    .local v0, "cal":Ljava/util/Calendar;
    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 163
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 164
    const/4 v1, 0x2

    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 165
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMaxDayOfMonth:I

    .line 166
    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMaxDayOfMonth:I

    if-le v1, v2, :cond_0

    .line 167
    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMaxDayOfMonth:I

    iput v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    .line 169
    :cond_0
    return-void
.end method

.method public final getDayOfMonth()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    return v0
.end method

.method public final getMonth()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    return v0
.end method

.method public final getYear()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    return v0
.end method

.method public final notifyDateChanged()V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;

    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;->onDateChanged(Lcn/nubia/commonui/widget/DatePickerView;III)V

    .line 176
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 155
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getMiddleTop()I

    move-result v7

    .line 156
    .local v7, "top":I
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getMiddleBottom()I

    move-result v6

    .line 157
    .local v6, "bottom":I
    const/4 v1, 0x0

    int-to-float v2, v7

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerView;->getRight()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcn/nubia/commonui/widget/DatePickerView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 158
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 213
    move-object v0, p1

    check-cast v0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;

    .line 214
    .local v0, "ss":Lcn/nubia/commonui/widget/DatePickerView$SavedState;
    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 215
    iget v1, v0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->sYear:I

    iput v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    .line 216
    iget v1, v0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->sMonth:I

    iput v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    .line 217
    iget v1, v0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->sDay:I

    iput v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    .line 218
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerView;->updateSpinners()V

    .line 219
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 207
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 208
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcn/nubia/commonui/widget/DatePickerView$SavedState;

    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    iget v4, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcn/nubia/commonui/widget/DatePickerView$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-object v1
.end method

.method public final update(IIILcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangeListener"    # Lcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 180
    iput p1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    .line 181
    iput p2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    .line 182
    iput p3, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    .line 183
    iput-object p4, p0, Lcn/nubia/commonui/widget/DatePickerView;->mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;

    .line 184
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 185
    .local v0, "cal":Ljava/util/Calendar;
    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 186
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 187
    const/4 v1, 0x2

    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 188
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMaxDayOfMonth:I

    .line 189
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerView;->updateSpinners()V

    .line 190
    return-void
.end method

.method public final updateDaySpinners()V
    .locals 3

    .prologue
    .line 199
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 200
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 201
    iget-object v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMaxDayOfMonth:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 202
    iget-object v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 203
    return-void
.end method

.method public final updateSpinners()V
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerView;->updateDaySpinners()V

    .line 194
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYearView:Lcn/nubia/commonui/widget/WheelView;

    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 195
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 196
    return-void
.end method
