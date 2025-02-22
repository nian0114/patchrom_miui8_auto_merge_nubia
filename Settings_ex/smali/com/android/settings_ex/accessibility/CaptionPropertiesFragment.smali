.class public Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;


# instance fields
.field private mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

.field private mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mCustom:Landroid/preference/PreferenceCategory;

.field private mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

.field private mEdgeType:Lcom/android/settings_ex/accessibility/EdgeTypePreference;

.field private mFontSize:Lcn/nubia/commonui/preference/ListPreference;

.field private mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

.field private mForegroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

.field private mLocale:Lcom/android/settings_ex/accessibility/LocalePreference;

.field private mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

.field private mPreviewText:Lcom/android/internal/widget/SubtitleView;

.field private mPreviewViewport:Landroid/view/View;

.field private mPreviewWindow:Landroid/view/View;

.field private mShowingCustom:Z

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

.field private mTypeface:Lcn/nubia/commonui/preference/ListPreference;

.field private mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

.field private mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;)Lcom/android/settings_ex/widget/SwitchBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    return-object v0
.end method

.method public static applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V
    .locals 10
    .param p0, "manager"    # Landroid/view/accessibility/CaptioningManager;
    .param p1, "previewText"    # Lcom/android/internal/widget/SubtitleView;
    .param p2, "previewWindow"    # Landroid/view/View;
    .param p3, "styleId"    # I

    .prologue
    const v9, 0x7f0c0666

    .line 209
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/SubtitleView;->setStyle(I)V

    .line 211
    invoke-virtual {p1}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 212
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 213
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    .line 214
    .local v2, "fontScale":F
    if-eqz p2, :cond_0

    .line 216
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x9

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x41800000    # 16.0f

    div-float v6, v7, v8

    .line 218
    .local v6, "virtualHeight":F
    const v7, 0x3d5a511a    # 0.0533f

    mul-float/2addr v7, v6

    mul-float/2addr v7, v2

    invoke-virtual {p1, v7}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 225
    .end local v6    # "virtualHeight":F
    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 226
    .local v3, "locale":Ljava/util/Locale;
    if-eqz v3, :cond_1

    .line 227
    invoke-static {v0, v3, v9}, Lcom/android/settings_ex/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 229
    .local v4, "localizedText":Ljava/lang/CharSequence;
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    .end local v4    # "localizedText":Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 220
    .end local v3    # "locale":Ljava/util/Locale;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b005a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 222
    .local v5, "textSize":F
    mul-float v7, v5, v2

    invoke-virtual {p1, v7}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    goto :goto_0

    .line 231
    .end local v5    # "textSize":F
    .restart local v3    # "locale":Ljava/util/Locale;
    :cond_1
    invoke-virtual {p1, v9}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    goto :goto_1
.end method

.method private initializeAllPreferences()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 262
    const-string v9, "captioning_locale"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/LocalePreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings_ex/accessibility/LocalePreference;

    .line 263
    const-string v9, "captioning_font_size"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcn/nubia/commonui/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mFontSize:Lcn/nubia/commonui/preference/ListPreference;

    .line 265
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 266
    .local v8, "res":Landroid/content/res/Resources;
    const v9, 0x7f0a0042

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 267
    .local v7, "presetValues":[I
    const v9, 0x7f0a0041

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 268
    .local v6, "presetTitles":[Ljava/lang/String;
    const-string v9, "captioning_preset"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/PresetPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    .line 269
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    invoke-virtual {v9, v7}, Lcom/android/settings_ex/accessibility/PresetPreference;->setValues([I)V

    .line 270
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    invoke-virtual {v9, v6}, Lcom/android/settings_ex/accessibility/PresetPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 272
    const-string v9, "custom"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    .line 273
    iput-boolean v12, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    .line 275
    const v9, 0x7f0a003e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 276
    .local v3, "colorValues":[I
    const v9, 0x7f0a003d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "colorTitles":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_foreground_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 278
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v2}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 279
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v3}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 281
    const v9, 0x7f0a0040

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 282
    .local v5, "opacityValues":[I
    const v9, 0x7f0a003f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, "opacityTitles":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_foreground_opacity"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 285
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 286
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 288
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_edge_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 289
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v2}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 290
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v3}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 293
    array-length v9, v3

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [I

    .line 294
    .local v1, "bgColorValues":[I
    array-length v9, v2

    add-int/lit8 v9, v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    .line 295
    .local v0, "bgColorTitles":[Ljava/lang/String;
    array-length v9, v3

    invoke-static {v3, v11, v1, v12, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 296
    array-length v9, v2

    invoke-static {v2, v11, v0, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    aput v11, v1, v11

    .line 298
    const v9, 0x7f0c066a

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v11

    .line 299
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_background_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 300
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 301
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v1}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 303
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_background_opacity"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 304
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 305
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 307
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_window_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 308
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 309
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v1}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 311
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_window_opacity"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 312
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 313
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 315
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_edge_type"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/EdgeTypePreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings_ex/accessibility/EdgeTypePreference;

    .line 316
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_typeface"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcn/nubia/commonui/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mTypeface:Lcn/nubia/commonui/preference/ListPreference;

    .line 317
    return-void
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->onInstallSwitchBarToggleSwitch()V

    .line 253
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 254
    return-void
.end method

.method private installUpdateListeners()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/PresetPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 321
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 322
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 323
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 324
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 325
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 326
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 327
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 328
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings_ex/accessibility/EdgeTypePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/EdgeTypePreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 330
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mTypeface:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 331
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mFontSize:Lcn/nubia/commonui/preference/ListPreference;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 332
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings_ex/accessibility/LocalePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/LocalePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 333
    return-void
.end method

.method private mergeColorOpacity(Lcom/android/settings_ex/accessibility/ColorPreference;Lcom/android/settings_ex/accessibility/ColorPreference;)I
    .locals 5
    .param p1, "color"    # Lcom/android/settings_ex/accessibility/ColorPreference;
    .param p2, "opacity"    # Lcom/android/settings_ex/accessibility/ColorPreference;

    .prologue
    .line 396
    invoke-virtual {p1}, Lcom/android/settings_ex/accessibility/ColorPreference;->getValue()I

    move-result v0

    .line 397
    .local v0, "colorValue":I
    invoke-virtual {p2}, Lcom/android/settings_ex/accessibility/ColorPreference;->getValue()I

    move-result v1

    .line 400
    .local v1, "opacityValue":I
    invoke-static {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 402
    const v3, 0xffff00

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    or-int v2, v3, v4

    .line 410
    .local v2, "value":I
    :goto_0
    return v2

    .line 403
    .end local v2    # "value":I
    :cond_0
    if-nez v0, :cond_1

    .line 405
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .restart local v2    # "value":I
    goto :goto_0

    .line 408
    .end local v2    # "value":I
    :cond_1
    const v3, 0xffffff

    and-int/2addr v3, v0

    const/high16 v4, -0x1000000

    and-int/2addr v4, v1

    or-int v2, v3, v4

    .restart local v2    # "value":I
    goto :goto_0
.end method

.method private parseColorOpacity(Lcom/android/settings_ex/accessibility/ColorPreference;Lcom/android/settings_ex/accessibility/ColorPreference;I)V
    .locals 4
    .param p1, "color"    # Lcom/android/settings_ex/accessibility/ColorPreference;
    .param p2, "opacity"    # Lcom/android/settings_ex/accessibility/ColorPreference;
    .param p3, "value"    # I

    .prologue
    const/high16 v3, -0x1000000

    .line 376
    invoke-static {p3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    const v0, 0xffffff

    .line 379
    .local v0, "colorValue":I
    and-int/lit16 v2, p3, 0xff

    shl-int/lit8 v1, v2, 0x18

    .line 391
    .local v1, "opacityValue":I
    :goto_0
    const v2, 0xffffff

    or-int/2addr v2, v1

    invoke-virtual {p2, v2}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValue(I)V

    .line 392
    invoke-virtual {p1, v0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValue(I)V

    .line 393
    return-void

    .line 380
    .end local v0    # "colorValue":I
    .end local v1    # "opacityValue":I
    :cond_0
    ushr-int/lit8 v2, p3, 0x18

    if-nez v2, :cond_1

    .line 382
    const/4 v0, 0x0

    .line 383
    .restart local v0    # "colorValue":I
    and-int/lit16 v2, p3, 0xff

    shl-int/lit8 v1, v2, 0x18

    .restart local v1    # "opacityValue":I
    goto :goto_0

    .line 386
    .end local v0    # "colorValue":I
    .end local v1    # "opacityValue":I
    :cond_1
    or-int v0, p3, v3

    .line 387
    .restart local v0    # "colorValue":I
    and-int v1, p3, v3

    .restart local v1    # "opacityValue":I
    goto :goto_0
.end method

.method private refreshPreviewText()V
    .locals 10

    .prologue
    const v9, 0x7f0c0665

    .line 177
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 178
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    .line 184
    .local v4, "preview":Lcom/android/internal/widget/SubtitleView;
    if-eqz v4, :cond_0

    .line 185
    iget-object v7, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v6

    .line 186
    .local v6, "styleId":I
    iget-object v7, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v8, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    invoke-static {v7, v4, v8, v6}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V

    .line 188
    iget-object v7, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 189
    .local v2, "locale":Ljava/util/Locale;
    if-eqz v2, :cond_2

    .line 190
    invoke-static {v0, v2, v9}, Lcom/android/settings_ex/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 192
    .local v3, "localizedText":Ljava/lang/CharSequence;
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .end local v3    # "localizedText":Ljava/lang/CharSequence;
    :goto_1
    iget-object v7, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v5

    .line 198
    .local v5, "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    invoke-virtual {v5}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 199
    iget-object v7, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    iget v8, v5, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 194
    .end local v5    # "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :cond_2
    invoke-virtual {v4, v9}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    goto :goto_1

    .line 201
    .restart local v5    # "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :cond_3
    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 202
    .local v1, "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v7, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    iget v8, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private refreshShowingCustom()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 414
    iget-object v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    invoke-virtual {v3}, Lcom/android/settings_ex/accessibility/PresetPreference;->getValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 415
    .local v0, "customPreset":Z
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-eqz v3, :cond_2

    .line 416
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 417
    iput-boolean v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    .line 422
    :cond_0
    :goto_1
    return-void

    .end local v0    # "customPreset":Z
    :cond_1
    move v0, v2

    .line 414
    goto :goto_0

    .line 418
    .restart local v0    # "customPreset":Z
    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-nez v2, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 420
    iput-boolean v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    goto :goto_1
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 258
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 259
    return-void
.end method

.method private updateAllPreferences()V
    .locals 12

    .prologue
    const v9, 0xffffff

    .line 336
    iget-object v10, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v10}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v5

    .line 337
    .local v5, "preset":I
    iget-object v10, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    invoke-virtual {v10, v5}, Lcom/android/settings_ex/accessibility/PresetPreference;->setValue(I)V

    .line 339
    iget-object v10, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v10}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v3

    .line 340
    .local v3, "fontSize":F
    iget-object v10, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mFontSize:Lcn/nubia/commonui/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 343
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-static {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 344
    .local v0, "attrs":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v10, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings_ex/accessibility/EdgeTypePreference;

    iget v11, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/accessibility/EdgeTypePreference;->setValue(I)V

    .line 345
    iget-object v10, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget v11, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValue(I)V

    .line 347
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v10

    if-eqz v10, :cond_2

    iget v4, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 349
    .local v4, "foregroundColor":I
    :goto_0
    iget-object v10, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget-object v11, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-direct {p0, v10, v11, v4}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/settings_ex/accessibility/ColorPreference;Lcom/android/settings_ex/accessibility/ColorPreference;I)V

    .line 351
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v10

    if-eqz v10, :cond_3

    iget v1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 353
    .local v1, "backgroundColor":I
    :goto_1
    iget-object v10, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget-object v11, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-direct {p0, v10, v11, v1}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/settings_ex/accessibility/ColorPreference;Lcom/android/settings_ex/accessibility/ColorPreference;I)V

    .line 355
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v10

    if-eqz v10, :cond_4

    iget v8, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    .line 357
    .local v8, "windowColor":I
    :goto_2
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget-object v10, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-direct {p0, v9, v10, v8}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/settings_ex/accessibility/ColorPreference;Lcom/android/settings_ex/accessibility/ColorPreference;I)V

    .line 359
    iget-object v7, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 360
    .local v7, "rawTypeface":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mTypeface:Lcn/nubia/commonui/preference/ListPreference;

    if-nez v7, :cond_0

    const-string v7, ""

    .end local v7    # "rawTypeface":Ljava/lang/String;
    :cond_0
    invoke-virtual {v9, v7}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 362
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    move-result-object v6

    .line 363
    .local v6, "rawLocale":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings_ex/accessibility/LocalePreference;

    if-nez v6, :cond_1

    const-string v6, ""

    .end local v6    # "rawLocale":Ljava/lang/String;
    :cond_1
    invoke-virtual {v9, v6}, Lcom/android/settings_ex/accessibility/LocalePreference;->setValue(Ljava/lang/String;)V

    .line 364
    return-void

    .end local v1    # "backgroundColor":I
    .end local v4    # "foregroundColor":I
    .end local v8    # "windowColor":I
    :cond_2
    move v4, v9

    .line 347
    goto :goto_0

    .restart local v4    # "foregroundColor":I
    :cond_3
    move v1, v9

    .line 351
    goto :goto_1

    .restart local v1    # "backgroundColor":I
    :cond_4
    move v8, v9

    .line 355
    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x3

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 157
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    .line 158
    .local v1, "enabled":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 159
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 160
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 161
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    .line 163
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 165
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 167
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->installSwitchBarToggleSwitch()V

    .line 168
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const-string v0, "captioning"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 109
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->addPreferencesFromResource(I)V

    .line 110
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->initializeAllPreferences()V

    .line 111
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->updateAllPreferences()V

    .line 112
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    .line 113
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->installUpdateListeners()V

    .line 114
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 119
    const v2, 0x7f040047

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 123
    .local v1, "rootView":Landroid/view/View;
    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 127
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, "content":Landroid/view/View;
    const v2, 0x7f1200ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 131
    return-object v1
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroyView()V

    .line 173
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->removeSwitchBarToggleSwitch()V

    .line 174
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment$2;-><init>(Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 249
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 454
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mTypeface:Lcn/nubia/commonui/preference/ListPreference;

    if-ne v1, p1, :cond_1

    .line 455
    const-string v1, "accessibility_captioning_typeface"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 466
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 467
    const/4 v1, 0x1

    return v1

    .line 457
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mFontSize:Lcn/nubia/commonui/preference/ListPreference;

    if-ne v1, p1, :cond_2

    .line 458
    const-string v1, "accessibility_captioning_font_scale"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto :goto_0

    .line 461
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings_ex/accessibility/LocalePreference;

    if-ne v1, p1, :cond_0

    .line 462
    const-string v1, "accessibility_captioning_locale"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onValueChanged(Lcom/android/settings_ex/accessibility/ListDialogPreference;I)V
    .locals 4
    .param p1, "preference"    # Lcom/android/settings_ex/accessibility/ListDialogPreference;
    .param p2, "value"    # I

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 427
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-ne v2, p1, :cond_2

    .line 428
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/settings_ex/accessibility/ColorPreference;Lcom/android/settings_ex/accessibility/ColorPreference;)I

    move-result v1

    .line 429
    .local v1, "merged":I
    const-string v2, "accessibility_captioning_foreground_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 448
    .end local v1    # "merged":I
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 449
    return-void

    .line 431
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-eq v2, p1, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-ne v2, p1, :cond_4

    .line 432
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/settings_ex/accessibility/ColorPreference;Lcom/android/settings_ex/accessibility/ColorPreference;)I

    move-result v1

    .line 433
    .restart local v1    # "merged":I
    const-string v2, "accessibility_captioning_background_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 435
    .end local v1    # "merged":I
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-eq v2, p1, :cond_5

    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-ne v2, p1, :cond_6

    .line 436
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/settings_ex/accessibility/ColorPreference;Lcom/android/settings_ex/accessibility/ColorPreference;)I

    move-result v1

    .line 437
    .restart local v1    # "merged":I
    const-string v2, "accessibility_captioning_window_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 439
    .end local v1    # "merged":I
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-ne v2, p1, :cond_7

    .line 440
    const-string v2, "accessibility_captioning_edge_color"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 441
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    if-ne v2, p1, :cond_8

    .line 442
    const-string v2, "accessibility_captioning_preset"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 443
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    goto :goto_0

    .line 444
    :cond_8
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings_ex/accessibility/EdgeTypePreference;

    if-ne v2, p1, :cond_1

    .line 445
    const-string v2, "accessibility_captioning_edge_type"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 138
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    .line 139
    .local v0, "enabled":Z
    const v1, 0x7f1200eb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SubtitleView;

    iput-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    .line 140
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 142
    const v1, 0x7f1200ea

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    .line 143
    const v1, 0x7f1200e9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    .line 144
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    new-instance v2, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment$1;-><init>(Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 151
    return-void

    .line 140
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method
