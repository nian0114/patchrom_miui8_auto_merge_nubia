.class public Lcom/android/settings_ex/FontSizeSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "FontSizeSettings.java"

# interfaces
.implements Lcom/android/settings_ex/FontSizePreference$OnClickListener;


# instance fields
.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mFontSizeBig:Lcom/android/settings_ex/FontSizePreference;

.field private mFontSizeExtralBig:Lcom/android/settings_ex/FontSizePreference;

.field private mFontSizeNormal:Lcom/android/settings_ex/FontSizePreference;

.field private mFontSizeSmall:Lcom/android/settings_ex/FontSizePreference;

.field private final mOldConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 67
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 68
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mOldConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method private updateFontSizePreference(Lcom/android/settings_ex/FontSizePreference;)V
    .locals 3
    .param p1, "activated"    # Lcom/android/settings_ex/FontSizePreference;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeSmall:Lcom/android/settings_ex/FontSizePreference;

    if-ne p1, v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeSmall:Lcom/android/settings_ex/FontSizePreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/FontSizePreference;->setChecked(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeNormal:Lcom/android/settings_ex/FontSizePreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/FontSizePreference;->setChecked(Z)V

    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeBig:Lcom/android/settings_ex/FontSizePreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/FontSizePreference;->setChecked(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeExtralBig:Lcom/android/settings_ex/FontSizePreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/FontSizePreference;->setChecked(Z)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeNormal:Lcom/android/settings_ex/FontSizePreference;

    if-ne p1, v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeSmall:Lcom/android/settings_ex/FontSizePreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/FontSizePreference;->setChecked(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeNormal:Lcom/android/settings_ex/FontSizePreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/FontSizePreference;->setChecked(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeBig:Lcom/android/settings_ex/FontSizePreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/FontSizePreference;->setChecked(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeExtralBig:Lcom/android/settings_ex/FontSizePreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/FontSizePreference;->setChecked(Z)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeBig:Lcom/android/settings_ex/FontSizePreference;

    if-ne p1, v0, :cond_3

    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeSmall:Lcom/android/settings_ex/FontSizePreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/FontSizePreference;->setChecked(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeNormal:Lcom/android/settings_ex/FontSizePreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/FontSizePreference;->setChecked(Z)V

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeBig:Lcom/android/settings_ex/FontSizePreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/FontSizePreference;->setChecked(Z)V

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeExtralBig:Lcom/android/settings_ex/FontSizePreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/FontSizePreference;->setChecked(Z)V

    goto :goto_0

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeExtralBig:Lcom/android/settings_ex/FontSizePreference;

    if-ne p1, v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeSmall:Lcom/android/settings_ex/FontSizePreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/FontSizePreference;->setChecked(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeNormal:Lcom/android/settings_ex/FontSizePreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/FontSizePreference;->setChecked(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeBig:Lcom/android/settings_ex/FontSizePreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/FontSizePreference;->setChecked(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeExtralBig:Lcom/android/settings_ex/FontSizePreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/FontSizePreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 6
    .param p1, "val"    # F

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/settings_ex/FontSizeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "indices":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 132
    .local v2, "lastVal":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 133
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 134
    .local v3, "thisVal":F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 135
    add-int/lit8 v4, v0, -0x1

    .line 139
    .end local v3    # "thisVal":F
    :goto_1
    return v4

    .line 137
    .restart local v3    # "thisVal":F
    :cond_0
    move v2, v3

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v3    # "thisVal":F
    :cond_1
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 204
    const/16 v0, 0x2e

    return v0
.end method

.method public initFontSizePreference()V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/settings_ex/FontSizeSettings;->readFontSizePreference()V

    .line 102
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/FontSizeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 77
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 78
    .local v1, "resolver":Landroid/content/ContentResolver;
    const v3, 0x7f08002c

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/FontSizeSettings;->addPreferencesFromResource(I)V

    .line 79
    const-string v3, "font_size_small"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/FontSizeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/FontSizePreference;

    iput-object v3, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeSmall:Lcom/android/settings_ex/FontSizePreference;

    .line 80
    const-string v3, "font_size_normal"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/FontSizeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/FontSizePreference;

    iput-object v3, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeNormal:Lcom/android/settings_ex/FontSizePreference;

    .line 81
    const-string v3, "font_size_big"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/FontSizeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/FontSizePreference;

    iput-object v3, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeBig:Lcom/android/settings_ex/FontSizePreference;

    .line 82
    const-string v3, "font_size_extral_big"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/FontSizeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/FontSizePreference;

    iput-object v3, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeExtralBig:Lcom/android/settings_ex/FontSizePreference;

    .line 84
    invoke-static {}, Lcom/android/settings_ex/Utils;->isZTEManufacturer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    iget-object v3, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeSmall:Lcom/android/settings_ex/FontSizePreference;

    invoke-virtual {v3}, Lcom/android/settings_ex/FontSizePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 86
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeSmall:Lcom/android/settings_ex/FontSizePreference;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "nubia"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/FontSizePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v3, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeNormal:Lcom/android/settings_ex/FontSizePreference;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "nubia"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/FontSizePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v3, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeBig:Lcom/android/settings_ex/FontSizePreference;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "nubia"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/FontSizePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v3, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeExtralBig:Lcom/android/settings_ex/FontSizePreference;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "nubia"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/FontSizePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeSmall:Lcom/android/settings_ex/FontSizePreference;

    invoke-virtual {v3, p0}, Lcom/android/settings_ex/FontSizePreference;->setOnClickListener(Lcom/android/settings_ex/FontSizePreference$OnClickListener;)V

    .line 94
    iget-object v3, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeNormal:Lcom/android/settings_ex/FontSizePreference;

    invoke-virtual {v3, p0}, Lcom/android/settings_ex/FontSizePreference;->setOnClickListener(Lcom/android/settings_ex/FontSizePreference$OnClickListener;)V

    .line 95
    iget-object v3, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeBig:Lcom/android/settings_ex/FontSizePreference;

    invoke-virtual {v3, p0}, Lcom/android/settings_ex/FontSizePreference;->setOnClickListener(Lcom/android/settings_ex/FontSizePreference$OnClickListener;)V

    .line 96
    iget-object v3, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeExtralBig:Lcom/android/settings_ex/FontSizePreference;

    invoke-virtual {v3, p0}, Lcom/android/settings_ex/FontSizePreference;->setOnClickListener(Lcom/android/settings_ex/FontSizePreference$OnClickListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings_ex/FontSizeSettings;->initFontSizePreference()V

    .line 98
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mOldConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iget-object v1, p0, Lcom/android/settings_ex/FontSizeSettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/settings_ex/FontSizeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "SettingsFontSize"

    iget-object v2, p0, Lcom/android/settings_ex/FontSizeSettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/umeng/NBMobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 200
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings_ex/FontSizePreference;)V
    .locals 2
    .param p1, "emiter"    # Lcom/android/settings_ex/FontSizePreference;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeSmall:Lcom/android/settings_ex/FontSizePreference;

    if-ne p1, v0, :cond_1

    .line 145
    const-wide v0, 0x3feb333333333333L    # 0.85

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/FontSizeSettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeSmall:Lcom/android/settings_ex/FontSizePreference;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/FontSizeSettings;->updateFontSizePreference(Lcom/android/settings_ex/FontSizePreference;)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeNormal:Lcom/android/settings_ex/FontSizePreference;

    if-ne p1, v0, :cond_2

    .line 148
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/FontSizeSettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeNormal:Lcom/android/settings_ex/FontSizePreference;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/FontSizeSettings;->updateFontSizePreference(Lcom/android/settings_ex/FontSizePreference;)V

    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeBig:Lcom/android/settings_ex/FontSizePreference;

    if-ne p1, v0, :cond_3

    .line 151
    const-wide v0, 0x3ff2666666666666L    # 1.15

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/FontSizeSettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeBig:Lcom/android/settings_ex/FontSizePreference;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/FontSizeSettings;->updateFontSizePreference(Lcom/android/settings_ex/FontSizePreference;)V

    goto :goto_0

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeExtralBig:Lcom/android/settings_ex/FontSizePreference;

    if-ne p1, v0, :cond_0

    .line 154
    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/FontSizeSettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeExtralBig:Lcom/android/settings_ex/FontSizePreference;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/FontSizeSettings;->updateFontSizePreference(Lcom/android/settings_ex/FontSizePreference;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 192
    return-void
.end method

.method public readFontSizePreference()V
    .locals 4

    .prologue
    .line 106
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/FontSizeSettings;->mOldConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 107
    iget-object v2, p0, Lcom/android/settings_ex/FontSizeSettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/FontSizeSettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/FontSizeSettings;->floatToIndex(F)I

    move-result v1

    .line 112
    .local v1, "index":I
    packed-switch v1, :pswitch_data_0

    .line 126
    :goto_1
    return-void

    .line 108
    .end local v1    # "index":I
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FontSizeSettings"

    const-string v3, "Unable to retrieve font size"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "index":I
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeSmall:Lcom/android/settings_ex/FontSizePreference;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/FontSizeSettings;->updateFontSizePreference(Lcom/android/settings_ex/FontSizePreference;)V

    goto :goto_1

    .line 117
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeNormal:Lcom/android/settings_ex/FontSizePreference;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/FontSizeSettings;->updateFontSizePreference(Lcom/android/settings_ex/FontSizePreference;)V

    goto :goto_1

    .line 120
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeBig:Lcom/android/settings_ex/FontSizePreference;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/FontSizeSettings;->updateFontSizePreference(Lcom/android/settings_ex/FontSizePreference;)V

    goto :goto_1

    .line 123
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings_ex/FontSizeSettings;->mFontSizeExtralBig:Lcom/android/settings_ex/FontSizePreference;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/FontSizeSettings;->updateFontSizePreference(Lcom/android/settings_ex/FontSizePreference;)V

    goto :goto_1

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 3
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/FontSizeSettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 161
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/FontSizeSettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FontSizeSettings"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
