.class public Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "SmartkeyVolumeSettings.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mCr:Landroid/content/ContentResolver;

.field private mLastProgress:I

.field private mNewProgress:I

.field private mVolumeKeySeekBar:Landroid/widget/SeekBar;

.field private mVolumeKeySeekBarPointDefault:Landroid/widget/ImageView;

.field private mVolumeKeySeekBarPointHigh:Landroid/widget/ImageView;

.field private mVolumeKeySeekBarPointLow:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 21
    iput v0, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mLastProgress:I

    .line 22
    iput v0, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mNewProgress:I

    return-void
.end method

.method private initSeekBarPreference()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 45
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mCr:Landroid/content/ContentResolver;

    const-string v2, "smartkey_sensitivity_level"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 47
    .local v0, "seekBarLevel":I
    if-ne v0, v5, :cond_1

    .line 48
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 49
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBarPointLow:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBarPointDefault:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBarPointHigh:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    if-nez v0, :cond_2

    .line 53
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 54
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBarPointLow:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBarPointDefault:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBarPointHigh:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 57
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 59
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBarPointLow:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBarPointDefault:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBarPointHigh:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSeekBarPoint()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 107
    iget v0, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mNewProgress:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBarPointLow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBarPointDefault:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBarPointHigh:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    :goto_0
    return-void

    .line 111
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mNewProgress:I

    const/16 v1, 0x46

    if-le v0, v1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBarPointHigh:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBarPointLow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBarPointDefault:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBarPointDefault:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBarPointLow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBarPointHigh:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 30
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/PhoneWindow;

    const v2, 0x7f0e0065

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/policy/PhoneWindow;->showStatusBarBackgroundPicture(ZI)V

    .line 32
    const v1, 0x7f04019c

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mCr:Landroid/content/ContentResolver;

    .line 34
    const v1, 0x7f1203b1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBarPointLow:Landroid/widget/ImageView;

    .line 35
    const v1, 0x7f1203b2

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBarPointDefault:Landroid/widget/ImageView;

    .line 36
    const v1, 0x7f1203b3

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBarPointHigh:Landroid/widget/ImageView;

    .line 37
    const v1, 0x7f1203b0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBar:Landroid/widget/SeekBar;

    .line 38
    invoke-direct {p0}, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->initSeekBarPreference()V

    .line 39
    iget-object v1, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mVolumeKeySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 41
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 126
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->finish()V

    goto :goto_0

    .line 124
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
    .line 67
    iget v0, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mNewProgress:I

    add-int/lit8 v0, v0, 0x3c

    if-gt p2, v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mNewProgress:I

    add-int/lit8 v0, v0, -0x3c

    if-ge p2, v0, :cond_1

    .line 68
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mLastProgress:I

    iput v0, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mNewProgress:I

    .line 69
    iget v0, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mLastProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_1
    iput p2, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mNewProgress:I

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 79
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

    .line 83
    iget v0, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mNewProgress:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 84
    iput v2, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mLastProgress:I

    .line 85
    iput v2, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mNewProgress:I

    .line 86
    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mCr:Landroid/content/ContentResolver;

    const-string v1, "smartkey_sensitivity_level"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    invoke-static {v2}, Lcom/android/settings_ex/smartkey/SmartkeyUtils;->setSensitivityLevel(I)V

    .line 102
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->updateSeekBarPoint()V

    .line 104
    return-void

    .line 89
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mNewProgress:I

    const/16 v1, 0x46

    if-le v0, v1, :cond_1

    .line 90
    iput v4, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mLastProgress:I

    .line 91
    iput v4, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mNewProgress:I

    .line 92
    invoke-virtual {p1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mCr:Landroid/content/ContentResolver;

    const-string v1, "smartkey_sensitivity_level"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 94
    invoke-static {v6}, Lcom/android/settings_ex/smartkey/SmartkeyUtils;->setSensitivityLevel(I)V

    goto :goto_0

    .line 96
    :cond_1
    iput v3, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mLastProgress:I

    .line 97
    iput v3, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mNewProgress:I

    .line 98
    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeyVolumeSettings;->mCr:Landroid/content/ContentResolver;

    const-string v1, "smartkey_sensitivity_level"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    invoke-static {v5}, Lcom/android/settings_ex/smartkey/SmartkeyUtils;->setSensitivityLevel(I)V

    goto :goto_0
.end method
