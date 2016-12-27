.class public Lcom/android/settings_ex/BrightnessPreference2;
.super Landroid/preference/Preference;
.source "BrightnessPreference2.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private final MODIFY_SEEK_BAR_RANGE:I

.field private isBindView:Z

.field private mAdjustmentDefaultPoint:Landroid/widget/ImageView;

.field private mAdjustmentDefaultValue:Landroid/widget/TextView;

.field private mAdjustmentDefaultValueListener:Landroid/view/View$OnClickListener;

.field private mAutoBrightnessSettings:Landroid/widget/LinearLayout;

.field private mAutomaticAvailable:Z

.field private mAutomaticBrightness:Lcn/nubia/commonui/widget/NubiaSwitch;

.field private mAutomaticMode:Z

.field private mContext:Landroid/content/Context;

.field private mCurBrightness:I

.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private final mScreenBrightnessDefaultValue:I

.field private final mScreenBrightnessMaximum:I

.field private final mScreenBrightnessMinimum:I

.field private mSeekBar:Lcom/android/settings_ex/LightSeekBar;

.field private mSeekBarTitle:Landroid/widget/TextView;

.field private mSmartMemorySwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

.field private mZteAutomaticAdjustmentAvailable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings_ex/BrightnessPreference2;->mCurBrightness:I

    .line 109
    iput-boolean v4, p0, Lcom/android/settings_ex/BrightnessPreference2;->isBindView:Z

    .line 213
    new-instance v2, Lcom/android/settings_ex/BrightnessPreference2$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/BrightnessPreference2$1;-><init>(Lcom/android/settings_ex/BrightnessPreference2;)V

    iput-object v2, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAdjustmentDefaultValueListener:Landroid/view/View$OnClickListener;

    .line 124
    iput-object p1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAutomaticAvailable:Z

    .line 133
    iget-object v2, p0, Lcom/android/settings_ex/BrightnessPreference2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "zte_auto_brightness_control_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 136
    .local v1, "zteControlMode":I
    if-ne v1, v5, :cond_0

    .line 137
    iput-boolean v5, p0, Lcom/android/settings_ex/BrightnessPreference2;->mZteAutomaticAdjustmentAvailable:Z

    .line 143
    :goto_0
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 145
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/BrightnessPreference2;->mScreenBrightnessMinimum:I

    .line 146
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/BrightnessPreference2;->mScreenBrightnessMaximum:I

    .line 147
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference2;->getMaxScreenBrightness()I

    move-result v2

    iget v3, p0, Lcom/android/settings_ex/BrightnessPreference2;->mScreenBrightnessMinimum:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/settings_ex/BrightnessPreference2;->MODIFY_SEEK_BAR_RANGE:I

    .line 149
    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference2;->MODIFY_SEEK_BAR_RANGE:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/settings_ex/BrightnessPreference2;->mScreenBrightnessDefaultValue:I

    .line 150
    const v2, 0x7f040122

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/BrightnessPreference2;->setLayoutResource(I)V

    .line 152
    return-void

    .line 139
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    iput-boolean v4, p0, Lcom/android/settings_ex/BrightnessPreference2;->mZteAutomaticAdjustmentAvailable:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/BrightnessPreference2;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/BrightnessPreference2;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mScreenBrightnessDefaultValue:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/BrightnessPreference2;)Lcom/android/settings_ex/LightSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/BrightnessPreference2;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSeekBar:Lcom/android/settings_ex/LightSeekBar;

    return-object v0
.end method

.method private getBrightness()I
    .locals 6

    .prologue
    .line 298
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings_ex/BrightnessPreference2;->getBrightnessMode(I)I

    move-result v2

    .line 299
    .local v2, "mode":I
    const/4 v0, 0x0

    .line 302
    .local v0, "brightness":F
    const-string v3, "BrightnessPreference2"

    const-string v4, "[getBrightness] : Entry!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-boolean v3, p0, Lcom/android/settings_ex/BrightnessPreference2;->mZteAutomaticAdjustmentAvailable:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference2;->getZteAutoBrightnessAdjValue()F

    move-result v0

    .line 306
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v0, v3, v4

    .line 321
    const-string v3, "BrightnessPreference2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightness() Auto_Brightness = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget v3, p0, Lcom/android/settings_ex/BrightnessPreference2;->MODIFY_SEEK_BAR_RANGE:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    :goto_0
    return v3

    .line 314
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference2;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    const/16 v5, 0x64

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 317
    .local v1, "manualBrightness":I
    const-string v3, "BrightnessPreference2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightness() Manual_Brightness = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget v3, p0, Lcom/android/settings_ex/BrightnessPreference2;->mScreenBrightnessMinimum:I

    sub-int v3, v1, v3

    goto :goto_0
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .prologue
    .line 326
    move v0, p1

    .line 328
    .local v0, "brightnessMode":I
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 333
    :goto_0
    return v0

    .line 331
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getMaxScreenBrightness()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mScreenBrightnessMaximum:I

    return v0
.end method

.method private getZteAutoBrightnessAdjValue()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "value":F
    const-string v2, "BrightnessPreference2"

    const-string v3, "[getZteAutoBrightnessAdjValue] : Entry!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v2, p0, Lcom/android/settings_ex/BrightnessPreference2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "zte_auto_brightness_adj_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 468
    .local v1, "zteAutoBrightnessAdjMode":I
    const-string v2, "BrightnessPreference2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getZteAutoBrightnessAdjValue]: zteAutoBrightnessAdjMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    if-nez v1, :cond_0

    .line 473
    iget-object v2, p0, Lcom/android/settings_ex/BrightnessPreference2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "zte_auto_brightness_adj"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 479
    :goto_0
    const-string v2, "BrightnessPreference2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getZteAutoBrightnessAdjValue]: value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return v0

    .line 476
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/BrightnessPreference2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference2;->getZteAutoBrightnessLevel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method private getZteAutoBrightnessLevel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 434
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zte_auto_brightness_level"

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 437
    .local v0, "level":I
    const-string v1, "BrightnessPreference2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getZteAutoBrightnessLevel]: level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    packed-switch v0, :pswitch_data_0

    .line 458
    const-string v1, "zte_auto_brightness_adj_5"

    :goto_0
    return-object v1

    .line 440
    :pswitch_0
    const-string v1, "zte_auto_brightness_adj_0"

    goto :goto_0

    .line 442
    :pswitch_1
    const-string v1, "zte_auto_brightness_adj_1"

    goto :goto_0

    .line 444
    :pswitch_2
    const-string v1, "zte_auto_brightness_adj_2"

    goto :goto_0

    .line 446
    :pswitch_3
    const-string v1, "zte_auto_brightness_adj_3"

    goto :goto_0

    .line 448
    :pswitch_4
    const-string v1, "zte_auto_brightness_adj_4"

    goto :goto_0

    .line 450
    :pswitch_5
    const-string v1, "zte_auto_brightness_adj_5"

    goto :goto_0

    .line 452
    :pswitch_6
    const-string v1, "zte_auto_brightness_adj_6"

    goto :goto_0

    .line 454
    :pswitch_7
    const-string v1, "zte_auto_brightness_adj_7"

    goto :goto_0

    .line 456
    :pswitch_8
    const-string v1, "zte_auto_brightness_adj_8"

    goto :goto_0

    .line 438
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private onBrightnessChanged()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSeekBar:Lcom/android/settings_ex/LightSeekBar;

    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference2;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/LightSeekBar;->setProgress(I)V

    .line 338
    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 341
    const-string v3, "BrightnessPreference2"

    const-string v4, "[onBrightnessModeChanged] : Entry!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-direct {p0, v2}, Lcom/android/settings_ex/BrightnessPreference2;->getBrightnessMode(I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 343
    .local v0, "checked":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAutomaticBrightness:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v3, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 344
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSeekBar:Lcom/android/settings_ex/LightSeekBar;

    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference2;->getBrightness()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/LightSeekBar;->setProgress(I)V

    .line 345
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSeekBar:Lcom/android/settings_ex/LightSeekBar;

    if-eqz v0, :cond_0

    iget-boolean v4, p0, Lcom/android/settings_ex/BrightnessPreference2;->mZteAutomaticAdjustmentAvailable:Z

    if-eqz v4, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {v3, v2}, Lcom/android/settings_ex/LightSeekBar;->setEnabled(Z)V

    .line 349
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference2;->updateUI()V

    .line 350
    return-void

    .end local v0    # "checked":Z
    :cond_2
    move v0, v2

    .line 342
    goto :goto_0
.end method

.method private setAutoAdjustmentScene(I)V
    .locals 3
    .param p1, "scene"    # I

    .prologue
    .line 422
    if-nez p1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_auto_brightness_adj_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 431
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_auto_brightness_adj_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setBrightness(IZ)V
    .locals 5
    .param p1, "brightness"    # I
    .param p2, "write"    # Z

    .prologue
    .line 353
    const-string v3, "BrightnessPreference2"

    const-string v4, "[setBrightness] : Entry!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-boolean v3, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAutomaticMode:Z

    if-eqz v3, :cond_1

    .line 357
    iget-boolean v3, p0, Lcom/android/settings_ex/BrightnessPreference2;->mZteAutomaticAdjustmentAvailable:Z

    if-eqz v3, :cond_0

    .line 358
    int-to-float v3, p1

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/settings_ex/BrightnessPreference2;->MODIFY_SEEK_BAR_RANGE:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v3, v4

    .line 359
    .local v2, "valf":F
    invoke-direct {p0, v2}, Lcom/android/settings_ex/BrightnessPreference2;->setZteAutoBrightnessAdjValue(F)V

    .line 392
    .end local v2    # "valf":F
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget v3, p0, Lcom/android/settings_ex/BrightnessPreference2;->mScreenBrightnessMinimum:I

    add-int/2addr p1, v3

    .line 381
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 383
    .local v0, "power":Landroid/os/IPowerManager;
    if-eqz v0, :cond_2

    .line 384
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 386
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference2;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 387
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v3, "screen_brightness"

    invoke-static {v1, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    .end local v0    # "power":Landroid/os/IPowerManager;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 395
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAutomaticMode:Z

    .line 396
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 398
    return-void

    .line 395
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setZteAutoBrightnessAdjValue(F)V
    .locals 4
    .param p1, "adj"    # F

    .prologue
    .line 485
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zte_auto_brightness_adj_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 488
    .local v0, "zteAutoBrightnessAdjMode":I
    const-string v1, "BrightnessPreference2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setZteAutoBrightnessAdjValue]: zteAutoBrightnessAdjMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adj = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    if-nez v0, :cond_0

    .line 493
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zte_auto_brightness_adj"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 500
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference2;->getZteAutoBrightnessLevel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto :goto_0
.end method

.method private showWarningDialogIfNeed()V
    .locals 7

    .prologue
    .line 526
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference2;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference2;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v4}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    const/4 v3, 0x0

    .line 529
    .local v3, "show":Z
    iget-boolean v4, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAutomaticMode:Z

    if-nez v4, :cond_2

    .line 530
    const-string v4, "BrightnessPreference2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBrightness() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference2;->getBrightness()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference2;->getBrightness()I

    move-result v4

    const/16 v5, 0xf0

    if-lt v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference2;->getNoLongerRemindFlag()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 532
    const/4 v3, 0x1

    .line 535
    :cond_2
    const-string v4, "BrightnessPreference2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "show = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    if-eqz v3, :cond_0

    .line 537
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference2;->mContext:Landroid/content/Context;

    const v5, 0x7f040043

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 539
    .local v2, "contents":Landroid/view/View;
    const v4, 0x7f1200e3

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 541
    .local v1, "checkbox":Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference2;->getNoLongerRemindFlag()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 543
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference2;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 544
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v4, 0x7f0c0c38

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 545
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 546
    const v4, 0x7f0c054c

    new-instance v5, Lcom/android/settings_ex/BrightnessPreference2$2;

    invoke-direct {v5, p0, v1}, Lcom/android/settings_ex/BrightnessPreference2$2;-><init>(Lcom/android/settings_ex/BrightnessPreference2;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 552
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 553
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/BrightnessPreference2;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    goto/16 :goto_0
.end method

.method private updateUI()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 407
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAutomaticMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mZteAutomaticAdjustmentAvailable:Z

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSeekBarTitle:Landroid/widget/TextView;

    const v1, 0x7f0c0c35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 409
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAutoBrightnessSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAdjustmentDefaultValue:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAdjustmentDefaultPoint:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 419
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSeekBarTitle:Landroid/widget/TextView;

    const v1, 0x7f0c0c34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 414
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAutoBrightnessSettings:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAdjustmentDefaultValue:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAdjustmentDefaultPoint:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public doBrightnessChange()V
    .locals 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->isBindView:Z

    if-nez v0, :cond_0

    .line 245
    const-string v0, "BrightnessPreference2"

    const-string v1, "[doBrightnessChange]: The view has not initialization!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference2;->onBrightnessChanged()V

    goto :goto_0
.end method

.method public doBrightnessModeChange()V
    .locals 2

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->isBindView:Z

    if-nez v0, :cond_0

    .line 253
    const-string v0, "BrightnessPreference2"

    const-string v1, "[doBrightnessModeChange]: The view has not initialization!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference2;->onBrightnessModeChanged()V

    .line 258
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference2;->notifyChanged()V

    goto :goto_0
.end method

.method public doZteAutomaticBrightnessChange()V
    .locals 2

    .prologue
    .line 262
    const-string v0, "BrightnessPreference2"

    const-string v1, "[doZteAutomaticBrightnessChange]: Entry!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->isBindView:Z

    if-nez v0, :cond_0

    .line 264
    const-string v0, "BrightnessPreference2"

    const-string v1, "[doBrightnessLevelChange]: The view has not initialization!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSeekBar:Lcom/android/settings_ex/LightSeekBar;

    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference2;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/LightSeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public getNoLongerRemindFlag()Z
    .locals 4

    .prologue
    .line 560
    iget-object v2, p0, Lcom/android/settings_ex/BrightnessPreference2;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 562
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "key_no_longer_remind_flag"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 563
    .local v0, "flag":Z
    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 156
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 158
    iput-boolean v2, p0, Lcom/android/settings_ex/BrightnessPreference2;->isBindView:Z

    .line 159
    invoke-direct {p0, v3}, Lcom/android/settings_ex/BrightnessPreference2;->getBrightnessMode(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAutomaticMode:Z

    .line 160
    const v1, 0x7f1202a9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/LightSeekBar;

    iput-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSeekBar:Lcom/android/settings_ex/LightSeekBar;

    .line 161
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSeekBar:Lcom/android/settings_ex/LightSeekBar;

    iget v4, p0, Lcom/android/settings_ex/BrightnessPreference2;->MODIFY_SEEK_BAR_RANGE:I

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/LightSeekBar;->setMax(I)V

    .line 162
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSeekBar:Lcom/android/settings_ex/LightSeekBar;

    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference2;->getBrightness()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/LightSeekBar;->setProgress(I)V

    .line 165
    const v1, 0x7f1202cb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSeekBarTitle:Landroid/widget/TextView;

    .line 166
    const v1, 0x7f1202cd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAdjustmentDefaultValue:Landroid/widget/TextView;

    .line 168
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAdjustmentDefaultValue:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAdjustmentDefaultValueListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const v1, 0x7f1202cc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAdjustmentDefaultPoint:Landroid/widget/ImageView;

    .line 173
    const v1, 0x7f1202cf

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAutoBrightnessSettings:Landroid/widget/LinearLayout;

    .line 175
    const v1, 0x7f1202d0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/widget/NubiaSwitch;

    iput-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSmartMemorySwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 177
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSmartMemorySwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1, p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 179
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "zte_auto_brightness_adj_mode"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 182
    .local v0, "scene":I
    iget-object v4, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSmartMemorySwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    if-ne v0, v2, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 186
    const v1, 0x7f1202ce

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/widget/NubiaSwitch;

    iput-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAutomaticBrightness:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 188
    iget-boolean v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAutomaticAvailable:Z

    if-eqz v1, :cond_4

    .line 189
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAutomaticBrightness:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1, p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 190
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAutomaticBrightness:Lcn/nubia/commonui/widget/NubiaSwitch;

    iget-boolean v4, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAutomaticMode:Z

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 191
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSeekBar:Lcom/android/settings_ex/LightSeekBar;

    iget-boolean v4, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAutomaticMode:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/settings_ex/BrightnessPreference2;->mZteAutomaticAdjustmentAvailable:Z

    if-eqz v4, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    invoke-virtual {v1, v3}, Lcom/android/settings_ex/LightSeekBar;->setEnabled(Z)V

    .line 197
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference2;->updateUI()V

    .line 209
    :goto_2
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSeekBar:Lcom/android/settings_ex/LightSeekBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/LightSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 211
    return-void

    .end local v0    # "scene":I
    :cond_2
    move v1, v3

    .line 159
    goto/16 :goto_0

    .restart local v0    # "scene":I
    :cond_3
    move v1, v3

    .line 182
    goto :goto_1

    .line 201
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSeekBar:Lcom/android/settings_ex/LightSeekBar;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/LightSeekBar;->setEnabled(Z)V

    .line 204
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSeekBarTitle:Landroid/widget/TextView;

    const v2, 0x7f0c0c34

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 205
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAutoBrightnessSettings:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 273
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAutomaticBrightness:Lcn/nubia/commonui/widget/NubiaSwitch;

    if-ne p1, v0, :cond_6

    .line 274
    const-string v0, "BrightnessPreference2"

    const-string v3, "[onCheckedChanged] : mode Entry!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference2;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "SettingsAutoBrightness"

    if-eqz p2, :cond_3

    const-string v0, "1"

    :goto_0
    invoke-static {v3, v4, v0}, Lcn/nubia/umeng/NBMobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    if-eqz p2, :cond_4

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings_ex/BrightnessPreference2;->setMode(I)V

    .line 281
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSeekBar:Lcom/android/settings_ex/LightSeekBar;

    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSeekBar:Lcom/android/settings_ex/LightSeekBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/LightSeekBar;->isBeginCenter()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/settings_ex/LightSeekBar;->setBeginCenter(Z)V

    .line 282
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSeekBar:Lcom/android/settings_ex/LightSeekBar;

    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference2;->getBrightness()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/LightSeekBar;->setProgress(I)V

    .line 283
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSeekBar:Lcom/android/settings_ex/LightSeekBar;

    iget-boolean v3, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAutomaticMode:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/settings_ex/BrightnessPreference2;->mZteAutomaticAdjustmentAvailable:Z

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/settings_ex/LightSeekBar;->setEnabled(Z)V

    .line 286
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference2;->updateUI()V

    .line 295
    :cond_2
    :goto_3
    return-void

    .line 275
    :cond_3
    const-string v0, "0"

    goto :goto_0

    :cond_4
    move v0, v2

    .line 279
    goto :goto_1

    :cond_5
    move v0, v2

    .line 281
    goto :goto_2

    .line 287
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSmartMemorySwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    if-ne p1, v0, :cond_2

    .line 288
    const-string v0, "BrightnessPreference2"

    const-string v3, "[onCheckedChanged] : smart Entry!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    if-eqz p2, :cond_7

    :goto_4
    invoke-direct {p0, v1}, Lcom/android/settings_ex/BrightnessPreference2;->setAutoAdjustmentScene(I)V

    .line 291
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSeekBar:Lcom/android/settings_ex/LightSeekBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/LightSeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/BrightnessPreference2;->setBrightness(IZ)V

    goto :goto_3

    :cond_7
    move v1, v2

    .line 289
    goto :goto_4
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference2;->mScreenBrightnessMinimum:I

    sub-int v0, v1, v2

    .line 226
    .local v0, "manualBrightness":I
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lcom/android/settings_ex/BrightnessPreference2;->setBrightness(IZ)V

    .line 227
    if-eqz p3, :cond_0

    if-ge v0, p2, :cond_1

    .line 228
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference2;->showWarningDialogIfNeed()V

    .line 230
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 616
    iget-boolean v3, p0, Lcom/android/settings_ex/BrightnessPreference2;->isBindView:Z

    if-nez v3, :cond_0

    .line 617
    const-string v1, "BrightnessPreference2"

    const-string v2, "[onResume]: The view has not initialization!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :goto_0
    return-void

    .line 621
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings_ex/BrightnessPreference2;->getBrightnessMode(I)I

    move-result v3

    if-ne v3, v1, :cond_3

    move v0, v1

    .line 622
    .local v0, "checked":Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference2;->mAutomaticBrightness:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v3, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 623
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSeekBar:Lcom/android/settings_ex/LightSeekBar;

    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference2;->getBrightness()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/LightSeekBar;->setProgress(I)V

    .line 624
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference2;->mSeekBar:Lcom/android/settings_ex/LightSeekBar;

    if-eqz v0, :cond_1

    iget-boolean v4, p0, Lcom/android/settings_ex/BrightnessPreference2;->mZteAutomaticAdjustmentAvailable:Z

    if-eqz v4, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    invoke-virtual {v3, v2}, Lcom/android/settings_ex/LightSeekBar;->setEnabled(Z)V

    .line 626
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference2;->updateUI()V

    goto :goto_0

    .end local v0    # "checked":Z
    :cond_3
    move v0, v2

    .line 621
    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 235
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 241
    return-void
.end method

.method public registerZteAutoContentObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    const/4 v1, 0x1

    .line 577
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    const-string v0, "zte_auto_brightness_level"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 583
    const-string v0, "zte_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 586
    const-string v0, "zte_auto_brightness_adj_0"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 589
    const-string v0, "zte_auto_brightness_adj_1"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 592
    const-string v0, "zte_auto_brightness_adj_2"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 595
    const-string v0, "zte_auto_brightness_adj_3"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 598
    const-string v0, "zte_auto_brightness_adj_4"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 601
    const-string v0, "zte_auto_brightness_adj_5"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 604
    const-string v0, "zte_auto_brightness_adj_6"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 607
    const-string v0, "zte_auto_brightness_adj_7"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 610
    const-string v0, "zte_auto_brightness_adj_8"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public setNoLongerRemindFlag(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 567
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference2;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 569
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "key_no_longer_remind_flag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 570
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 571
    return-void
.end method
