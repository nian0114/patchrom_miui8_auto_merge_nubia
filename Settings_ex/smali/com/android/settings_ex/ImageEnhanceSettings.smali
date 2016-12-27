.class public Lcom/android/settings_ex/ImageEnhanceSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ImageEnhanceSettings.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private mCoolTone:Landroid/widget/RadioButton;

.field private mHueRadioGroup:Landroid/widget/RadioGroup;

.field private mHueView:Landroid/view/View;

.field private mImprove:Landroid/widget/RadioButton;

.field private mNaturalTone:Landroid/widget/RadioButton;

.field private mNormal:Landroid/widget/RadioButton;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mSaturView:Landroid/view/View;

.field private mWarmTone:Landroid/widget/RadioButton;

.field private mWeak:Landroid/widget/RadioButton;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, -0x1

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->mHueRadioGroup:Landroid/widget/RadioGroup;

    if-ne p1, v0, :cond_1

    .line 110
    packed-switch p2, :pswitch_data_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 112
    :pswitch_0
    const-string v0, "persist.sys.image.colortmp"

    const-string v1, "c"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :pswitch_1
    const-string v0, "persist.sys.image.colortmp"

    const-string v1, "n"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :pswitch_2
    const-string v0, "persist.sys.image.colortmp"

    const-string v1, "w"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_1
    const v0, 0x7f1201b7

    if-ne p2, v0, :cond_2

    .line 124
    const-string v0, "persist.sys.image.enhance"

    const-string v1, "w"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_2
    const v0, 0x7f1201b6

    if-ne p2, v0, :cond_3

    .line 126
    const-string v0, "persist.sys.image.enhance"

    const-string v1, "n"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_3
    const v0, 0x7f1201b5

    if-ne p2, v0, :cond_0

    .line 128
    const-string v0, "persist.sys.image.enhance"

    const-string v1, "i"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x7f1201b9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 137
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 62
    const v2, 0x7f0400b2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->view:Landroid/view/View;

    .line 64
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->view:Landroid/view/View;

    const v3, 0x7f1201be

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 65
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->view:Landroid/view/View;

    const v3, 0x7f1201bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->mHueRadioGroup:Landroid/widget/RadioGroup;

    .line 67
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->view:Landroid/view/View;

    const v3, 0x7f1201b5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->mImprove:Landroid/widget/RadioButton;

    .line 68
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->view:Landroid/view/View;

    const v3, 0x7f1201b6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->mNormal:Landroid/widget/RadioButton;

    .line 69
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->view:Landroid/view/View;

    const v3, 0x7f1201b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->mWeak:Landroid/widget/RadioButton;

    .line 71
    const-string v2, "persist.sys.image.enhance"

    const-string v3, "w"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "saturationType":Ljava/lang/String;
    const-string v2, "i"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 74
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->mImprove:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 80
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->view:Landroid/view/View;

    const v3, 0x7f1201b9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->mCoolTone:Landroid/widget/RadioButton;

    .line 81
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->view:Landroid/view/View;

    const v3, 0x7f1201ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->mNaturalTone:Landroid/widget/RadioButton;

    .line 82
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->view:Landroid/view/View;

    const v3, 0x7f1201bb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->mWarmTone:Landroid/widget/RadioButton;

    .line 84
    const-string v2, "persist.sys.image.colortmp"

    const-string v3, "n"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "hueType":Ljava/lang/String;
    const-string v2, "c"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 87
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->mCoolTone:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 93
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 94
    invoke-static {}, Lcom/android/settings_ex/Utils;->isHueNotSupported()Z

    move-result v2

    if-nez v2, :cond_2

    .line 95
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->mHueRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 97
    :cond_2
    invoke-static {}, Lcom/android/settings_ex/Utils;->isHueNotSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->view:Landroid/view/View;

    const v3, 0x7f120070

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->mHueView:Landroid/view/View;

    .line 99
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->mHueView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_3
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSaturNotSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 102
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->view:Landroid/view/View;

    const v3, 0x7f12006b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->mSaturView:Landroid/view/View;

    .line 103
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->mSaturView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->view:Landroid/view/View;

    return-object v2

    .line 75
    .end local v0    # "hueType":Ljava/lang/String;
    :cond_5
    const-string v2, "n"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 76
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->mNormal:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 77
    :cond_6
    const-string v2, "w"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->mWeak:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 88
    .restart local v0    # "hueType":Ljava/lang/String;
    :cond_7
    const-string v2, "n"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 89
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->mNaturalTone:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 90
    :cond_8
    const-string v2, "w"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/android/settings_ex/ImageEnhanceSettings;->mWarmTone:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method
