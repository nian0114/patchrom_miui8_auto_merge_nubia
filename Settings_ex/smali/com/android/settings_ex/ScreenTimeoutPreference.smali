.class public Lcom/android/settings_ex/ScreenTimeoutPreference;
.super Landroid/preference/Preference;
.source "ScreenTimeoutPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-object p1, p0, Lcom/android/settings_ex/ScreenTimeoutPreference;->mContext:Landroid/content/Context;

    .line 57
    const v0, 0x7f040137

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ScreenTimeoutPreference;->setLayoutResource(I)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ScreenTimeoutPreference;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ScreenTimeoutPreference;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ScreenTimeoutPreference;->setScreenTimeout(I)V

    return-void
.end method

.method private getScreenTimeout()I
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/ScreenTimeoutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const v2, 0xea60

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setScreenTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/ScreenTimeoutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private timeoutToProgress(I)I
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    const v0, 0x7f1202f1

    .line 98
    const v1, 0x7fffffff

    if-ne p1, v1, :cond_1

    .line 99
    const v0, 0x7f1202f5

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    const/16 v1, 0x4e20

    if-gt p1, v1, :cond_2

    .line 101
    const v0, 0x7f1200df

    goto :goto_0

    .line 102
    :cond_2
    const v1, 0x9c40

    if-gt p1, v1, :cond_3

    .line 103
    const v0, 0x7f1200e2

    goto :goto_0

    .line 104
    :cond_3
    const v1, 0x11170

    if-le p1, v1, :cond_0

    .line 106
    const v1, 0x33450

    if-gt p1, v1, :cond_4

    .line 107
    const v0, 0x7f1202f2

    goto :goto_0

    .line 108
    :cond_4
    const v1, 0x6ddd0

    if-gt p1, v1, :cond_5

    .line 109
    const v0, 0x7f1202f3

    goto :goto_0

    .line 110
    :cond_5
    const v1, 0x124f80

    if-gt p1, v1, :cond_0

    .line 111
    const v0, 0x7f1202f4

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 63
    const v0, 0x7f1202f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/settings_ex/ScreenTimeoutPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/ScreenTimeoutPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Lcom/android/settings_ex/ScreenTimeoutPreference;->getScreenTimeout()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ScreenTimeoutPreference;->timeoutToProgress(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/ScreenTimeoutPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/android/settings_ex/ScreenTimeoutPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/ScreenTimeoutPreference$1;-><init>(Lcom/android/settings_ex/ScreenTimeoutPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 95
    return-void
.end method

.method public updateScreenTimeOut()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/ScreenTimeoutPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Lcom/android/settings_ex/ScreenTimeoutPreference;->getScreenTimeout()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ScreenTimeoutPreference;->timeoutToProgress(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 134
    return-void
.end method
