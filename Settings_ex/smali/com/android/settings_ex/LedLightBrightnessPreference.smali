.class public Lcom/android/settings_ex/LedLightBrightnessPreference;
.super Landroid/preference/Preference;
.source "LedLightBrightnessPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private final MAX_BRIGHTNESS:I

.field private final MIN_BRIGHTNESS:I

.field private final MODIFY_SEEK_BAR_RANGE:I

.field private mAutomaticMode:Z

.field private mContext:Landroid/content/Context;

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, 0x32

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v1, p0, Lcom/android/settings_ex/LedLightBrightnessPreference;->MODIFY_SEEK_BAR_RANGE:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/LedLightBrightnessPreference;->MIN_BRIGHTNESS:I

    .line 28
    iput v1, p0, Lcom/android/settings_ex/LedLightBrightnessPreference;->MAX_BRIGHTNESS:I

    .line 35
    iput-object p1, p0, Lcom/android/settings_ex/LedLightBrightnessPreference;->mContext:Landroid/content/Context;

    .line 36
    const v0, 0x7f0400c0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LedLightBrightnessPreference;->setLayoutResource(I)V

    .line 37
    return-void
.end method

.method private getBrightness()I
    .locals 4

    .prologue
    .line 66
    iget-object v2, p0, Lcom/android/settings_ex/LedLightBrightnessPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 67
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "led_light_brightness"

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 69
    .local v0, "brightness":I
    if-gez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 73
    :cond_0
    const/16 v2, 0x32

    if-le v0, v2, :cond_1

    .line 74
    const/16 v0, 0x32

    .line 76
    :cond_1
    return v0
.end method

.method private getBrightnessMode()I
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Lcom/android/settings_ex/LedLightBrightnessPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 81
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "led_light_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private setBrightness(I)V
    .locals 3
    .param p1, "brightness"    # I

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/settings_ex/LedLightBrightnessPreference;->mAutomaticMode:Z

    if-nez v0, :cond_2

    .line 52
    if-gez p1, :cond_0

    .line 53
    const/4 p1, 0x0

    .line 56
    :cond_0
    const/16 v0, 0x32

    if-le p1, v0, :cond_1

    .line 57
    const/16 p1, 0x32

    .line 59
    :cond_1
    const-string v0, "LedLightPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrightness: brightness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/LedLightBrightnessPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "led_light_brightness"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 63
    :cond_2
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 41
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 42
    invoke-direct {p0}, Lcom/android/settings_ex/LedLightBrightnessPreference;->getBrightnessMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/LedLightBrightnessPreference;->mAutomaticMode:Z

    .line 43
    const v0, 0x7f1201ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings_ex/LedLightBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/LedLightBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x32

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/LedLightBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings_ex/LedLightBrightnessPreference;->getBrightness()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/LedLightBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/settings_ex/LedLightBrightnessPreference;->mAutomaticMode:Z

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 47
    iget-object v0, p0, Lcom/android/settings_ex/LedLightBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 48
    return-void

    :cond_0
    move v0, v2

    .line 42
    goto :goto_0

    :cond_1
    move v1, v2

    .line 46
    goto :goto_1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p2}, Lcom/android/settings_ex/LedLightBrightnessPreference;->setBrightness(I)V

    .line 90
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 96
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/LedLightBrightnessPreference;->setBrightness(I)V

    .line 101
    return-void
.end method
