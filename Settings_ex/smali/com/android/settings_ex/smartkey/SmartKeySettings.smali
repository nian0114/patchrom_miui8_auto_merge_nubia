.class public Lcom/android/settings_ex/smartkey/SmartKeySettings;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "SmartKeySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private IS_LONG_SMARTKEY_PRESS:Ljava/lang/String;

.field private mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

.field private mCr:Landroid/content/ContentResolver;

.field private mLastProgress:I

.field private mNewProgress:I

.field private mSeekbar:Landroid/widget/SeekBar;

.field private mSmartkeyFastPhoto:Landroid/view/View;

.field private mSmartkeyLongSummary:Landroid/widget/TextView;

.field private mSmartkeyPicture:Landroid/view/View;

.field private mSmartkeyPressLong:Landroid/view/View;

.field private mSmartkeyPressShort:Landroid/view/View;

.field private mSmartkeySeekBarPointDefault:Landroid/widget/ImageView;

.field private mSmartkeySeekBarPointHigh:Landroid/widget/ImageView;

.field private mSmartkeySeekBarPointLow:Landroid/widget/ImageView;

.field private mSmartkeyShortSummary:Landroid/widget/TextView;

.field private mSmartkeyTelephoneRecord:Landroid/view/View;

.field private mSnapshotSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

.field private mTakePhotoSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

.field private mTelePhoneRecordSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 37
    iput v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mLastProgress:I

    .line 38
    iput v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mNewProgress:I

    .line 46
    const-string v0, "is_long_smartkey_press"

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->IS_LONG_SMARTKEY_PRESS:Ljava/lang/String;

    return-void
.end method

.method private initSeekBarPreference()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 96
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mCr:Landroid/content/ContentResolver;

    const-string v2, "smartkey_sensitivity_level"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 97
    .local v0, "seekBarLevel":I
    if-ne v0, v5, :cond_1

    .line 98
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSeekbar:Landroid/widget/SeekBar;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 99
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeySeekBarPointLow:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeySeekBarPointDefault:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeySeekBarPointHigh:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    if-nez v0, :cond_2

    .line 103
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 104
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeySeekBarPointLow:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeySeekBarPointDefault:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeySeekBarPointHigh:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSeekbar:Landroid/widget/SeekBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 109
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeySeekBarPointLow:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeySeekBarPointDefault:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeySeekBarPointHigh:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initSmartSummary()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 117
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mCr:Landroid/content/ContentResolver;

    const-string v3, "smartkey_long_press"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 118
    .local v0, "smartkeyLongIndex":I
    if-nez v0, :cond_2

    .line 119
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyLongSummary:Landroid/widget/TextView;

    const v3, 0x7f0c0de9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 129
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mCr:Landroid/content/ContentResolver;

    const-string v3, "smartkey_short_press"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 130
    .local v1, "smartkeyShortIndex":I
    if-nez v1, :cond_6

    .line 131
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyShortSummary:Landroid/widget/TextView;

    const v3, 0x7f0c0de9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 141
    :cond_1
    :goto_1
    return-void

    .line 120
    .end local v1    # "smartkeyShortIndex":I
    :cond_2
    if-ne v0, v5, :cond_3

    .line 121
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyLongSummary:Landroid/widget/TextView;

    const v3, 0x7f0c0df8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 122
    :cond_3
    if-ne v0, v6, :cond_4

    .line 123
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyLongSummary:Landroid/widget/TextView;

    const v3, 0x7f0c0df9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 124
    :cond_4
    if-ne v0, v7, :cond_5

    .line 125
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyLongSummary:Landroid/widget/TextView;

    const v3, 0x7f0c0dfa

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 126
    :cond_5
    if-ne v0, v8, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyLongSummary:Landroid/widget/TextView;

    const v3, 0x7f0c0dfc

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 132
    .restart local v1    # "smartkeyShortIndex":I
    :cond_6
    if-ne v1, v5, :cond_7

    .line 133
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyShortSummary:Landroid/widget/TextView;

    const v3, 0x7f0c0df8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 134
    :cond_7
    if-ne v1, v6, :cond_8

    .line 135
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyShortSummary:Landroid/widget/TextView;

    const v3, 0x7f0c0df9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 136
    :cond_8
    if-ne v1, v7, :cond_9

    .line 137
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyShortSummary:Landroid/widget/TextView;

    const v3, 0x7f0c0dfa

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 138
    :cond_9
    if-ne v1, v8, :cond_1

    .line 139
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyShortSummary:Landroid/widget/TextView;

    const v3, 0x7f0c0dfc

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private initSmartkeySwitch()V
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f12039c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyShortSummary:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f1203a0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyLongSummary:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f1203b0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSeekbar:Landroid/widget/SeekBar;

    .line 69
    const v0, 0x7f12039a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyPressShort:Landroid/view/View;

    .line 70
    const v0, 0x7f12039e

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyPressLong:Landroid/view/View;

    .line 71
    const v0, 0x7f1203a2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyFastPhoto:Landroid/view/View;

    .line 72
    const v0, 0x7f1203a6

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyPicture:Landroid/view/View;

    .line 73
    const v0, 0x7f1203aa

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyTelephoneRecord:Landroid/view/View;

    .line 74
    const v0, 0x7f1203a4

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/NubiaSwitch;

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSnapshotSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 75
    const v0, 0x7f1203a8

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/NubiaSwitch;

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mTakePhotoSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 76
    const v0, 0x7f1203ac

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/NubiaSwitch;

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mTelePhoneRecordSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 77
    const v0, 0x7f1203b1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeySeekBarPointLow:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f1203b2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeySeekBarPointDefault:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f1203b3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeySeekBarPointHigh:Landroid/widget/ImageView;

    .line 80
    invoke-direct {p0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->initSeekBarPreference()V

    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyPressShort:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyPressLong:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyFastPhoto:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyPicture:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyTelephoneRecord:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSnapshotSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mTakePhotoSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mTelePhoneRecordSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSnapshotSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mTakePhotoSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mTelePhoneRecordSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 93
    return-void
.end method

.method private initSwitchSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mCr:Landroid/content/ContentResolver;

    const-string v1, "smartkey_screen_off_snapshot"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSnapshotSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mCr:Landroid/content/ContentResolver;

    const-string v1, "smartkey_camera_take_photo"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mTakePhotoSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 156
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mCr:Landroid/content/ContentResolver;

    const-string v1, "smartkey_camera_take_photo"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mTelePhoneRecordSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 161
    :goto_2
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSnapshotSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mTakePhotoSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    goto :goto_1

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mTelePhoneRecordSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    goto :goto_2
.end method

.method private updateSeekBarPoint()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 246
    iget v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mNewProgress:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeySeekBarPointLow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeySeekBarPointDefault:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeySeekBarPointHigh:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    :goto_0
    return-void

    .line 250
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mNewProgress:I

    const/16 v1, 0x46

    if-le v0, v1, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeySeekBarPointHigh:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeySeekBarPointLow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeySeekBarPointDefault:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeySeekBarPointDefault:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeySeekBarPointLow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeySeekBarPointHigh:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 175
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSnapshotSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    if-ne p1, v2, :cond_2

    .line 176
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mCr:Landroid/content/ContentResolver;

    const-string v3, "smartkey_screen_off_snapshot"

    if-eqz p2, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    invoke-static {p2}, Lcom/android/settings_ex/smartkey/SmartkeyUtils;->enableWakeup(Z)Z

    .line 185
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 176
    goto :goto_0

    .line 179
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mTakePhotoSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    if-ne p1, v2, :cond_4

    .line 180
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mCr:Landroid/content/ContentResolver;

    const-string v3, "smartkey_camera_take_photo"

    if-eqz p2, :cond_3

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 182
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mTelePhoneRecordSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    if-ne p1, v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mCr:Landroid/content/ContentResolver;

    const-string v3, "smartkey_calling_record"

    if-eqz p2, :cond_5

    :goto_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    iget-object v3, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyFastPhoto:Landroid/view/View;

    if-ne v3, p1, :cond_2

    .line 190
    iget-object v3, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSnapshotSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    iget-object v4, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSnapshotSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v4}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    invoke-virtual {v3, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 204
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 190
    goto :goto_0

    .line 191
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyPicture:Landroid/view/View;

    if-ne v3, p1, :cond_4

    .line 192
    iget-object v3, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mTakePhotoSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    iget-object v4, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mTakePhotoSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v4}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v4

    if-nez v4, :cond_3

    :goto_2
    invoke-virtual {v3, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    .line 193
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyTelephoneRecord:Landroid/view/View;

    if-ne v3, p1, :cond_6

    .line 194
    iget-object v3, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mTelePhoneRecordSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    iget-object v4, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mTelePhoneRecordSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v4}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v4

    if-nez v4, :cond_5

    :goto_3
    invoke-virtual {v3, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_3

    .line 195
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyPressShort:Landroid/view/View;

    if-ne v3, p1, :cond_7

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->IS_LONG_SMARTKEY_PRESS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 199
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mSmartkeyPressLong:Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->IS_LONG_SMARTKEY_PRESS:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f04019a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mCr:Landroid/content/ContentResolver;

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->initSmartkeySwitch()V

    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->initSwitchSettings()V

    .line 57
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 165
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 170
    :goto_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 167
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->finish()V

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 208
    iget v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mNewProgress:I

    add-int/lit8 v0, v0, 0x3c

    if-gt p2, v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mNewProgress:I

    add-int/lit8 v0, v0, -0x3c

    if-ge p2, v0, :cond_1

    .line 209
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mLastProgress:I

    iput v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mNewProgress:I

    .line 210
    iget v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mLastProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 214
    :goto_0
    return-void

    .line 213
    :cond_1
    iput p2, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mNewProgress:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onResume()V

    .line 62
    invoke-direct {p0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->initSmartSummary()V

    .line 63
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 219
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x64

    const/16 v3, 0x32

    const/4 v2, 0x0

    .line 223
    iget v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mNewProgress:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 224
    iput v2, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mLastProgress:I

    .line 225
    iput v2, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mNewProgress:I

    .line 226
    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mCr:Landroid/content/ContentResolver;

    const-string v1, "smartkey_sensitivity_level"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    invoke-static {v2}, Lcom/android/settings_ex/smartkey/SmartkeyUtils;->setSensitivityLevel(I)V

    .line 242
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/smartkey/SmartKeySettings;->updateSeekBarPoint()V

    .line 243
    return-void

    .line 229
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mNewProgress:I

    const/16 v1, 0x46

    if-le v0, v1, :cond_1

    .line 230
    iput v4, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mLastProgress:I

    .line 231
    iput v4, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mNewProgress:I

    .line 232
    invoke-virtual {p1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mCr:Landroid/content/ContentResolver;

    const-string v1, "smartkey_sensitivity_level"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    invoke-static {v6}, Lcom/android/settings_ex/smartkey/SmartkeyUtils;->setSensitivityLevel(I)V

    goto :goto_0

    .line 236
    :cond_1
    iput v3, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mLastProgress:I

    .line 237
    iput v3, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mNewProgress:I

    .line 238
    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartKeySettings;->mCr:Landroid/content/ContentResolver;

    const-string v1, "smartkey_sensitivity_level"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 240
    invoke-static {v5}, Lcom/android/settings_ex/smartkey/SmartkeyUtils;->setSensitivityLevel(I)V

    goto :goto_0
.end method
